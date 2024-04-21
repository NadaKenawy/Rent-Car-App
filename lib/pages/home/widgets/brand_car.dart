import 'package:flutter/material.dart';
import 'package:rent_car_app/colors.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.image, required this.width,
  });
  final String image;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: secbackgroundColor, borderRadius: BorderRadius.circular(30)),
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
