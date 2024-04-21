
import 'package:flutter/material.dart';
import 'package:rent_car_app/pages/home/widgets/brand_car.dart';

class ScrollableBrands extends StatelessWidget {
  const ScrollableBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var images = [
      "assets/1.png",
      "assets/2.png",
      "assets/3.png",
      "assets/4.png",
      "assets/5.png"
    ];
    return SizedBox(
      height: (size.width - 16 * 4) / 3,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return BrandCard(
              image: images[index],
              width: (size.width - 16 * 4) / 3,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: images.length),
    );
  }
}
