import 'package:flutter/material.dart';
import 'package:rent_car_app/colors.dart';

class TittleText extends StatelessWidget {
  const TittleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "We Brinf The Best Car\nFor You As An ",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
              letterSpacing: .9),
          children: [
            TextSpan(
              text: "Enthusiast",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: yellowColor,
                  fontSize: 25,
                  letterSpacing: .9),
            )
          ]),
    );
  }
}
