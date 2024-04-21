import 'package:flutter/material.dart';
import 'package:rent_car_app/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: yellowColor,
        ),
        const SizedBox(
          width: 8,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Location",
              style: TextStyle(color: greyColor, fontSize: 20),
            ),
            Text(
              "Egypt, Port Said",
              style: TextStyle(color: backgroundColor, fontSize: 20),
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: size.width * 0.12,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            "assets/user2.jpg",
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
