import 'package:flutter/material.dart';
import 'package:rent_car_app/models/car.dart';
import 'package:rent_car_app/pages/home/widgets/car_card.dart';

class ScrollableCars extends StatelessWidget {
  const ScrollableCars({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width * 0.25,
      child: ListView.separated(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CarCard(
              width: (size.width - 16 * 3) / 2,
              height: ((size.width - 16 * 3) / 2) * .42,
              title: cars[index].name,
              subtitle: "${cars[index].price}\$/day",
              image: cars[index].image,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: cars.length),
    );
  }
}