import 'package:flutter/material.dart';
import 'package:rent_car_app/colors.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final double width;
  final double height;
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: width,
          padding: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
          decoration: BoxDecoration(
              color: secbackgroundColor,
              borderRadius: BorderRadius.circular(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: height * .5,
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white, letterSpacing: .8),
              ),
              Text(
                subtitle,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: yellowColor, letterSpacing: .8),
              )
            ],
          ),
        ),
        Positioned(
          top: -height * .5,
          right: (width * .1),
          child: SizedBox(
            width: width * .8,
            child: Image.asset(
              image,
              fit: BoxFit.fitHeight,
            ),
          ),
        )
      ],
    );
  }
}
