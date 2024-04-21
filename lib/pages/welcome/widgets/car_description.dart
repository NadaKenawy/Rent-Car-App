import 'package:flutter/material.dart';
import 'package:rent_car_app/pages/welcome/widgets/tittle_text.dart';

class CarDescription extends StatelessWidget {
  const CarDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TittleText(),
          const SizedBox(
            height: 32,
          ),
          Text(
            "Get Experience Ridding Dream Car, We Sill Set Up The Car, You Just Need To Book And Go Rock",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: .9,
                  height: 1.3,
                ),
          )
        ],
      ),
    );
  }
}
