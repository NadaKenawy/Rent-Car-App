import 'package:flutter/material.dart';
import 'package:rent_car_app/colors.dart';
import 'package:rent_car_app/pages/home/home_page.dart';
import 'package:rent_car_app/pages/welcome/widgets/background_image.dart';
import 'package:rent_car_app/pages/welcome/widgets/car_description.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const BackgroundImage(),
          SizedBox(
            width: size.width,
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.5 * 0.15,
                      ),
                      const CarDescription(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(size.width, size.height * .07),
                            backgroundColor: yellowColor,
                          ),
                          onPressed: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              )),
                          child: const Text(
                            "Get Started",
                            style:
                                TextStyle(color: backgroundColor, fontSize: 25),
                          ))
                    ],
                  ),
                ),
                Positioned(
                    top: -size.height * 0.5 * 0.7,
                    left: -size.height * 0.5 * 0.55,
                    child: SizedBox(
                      height: size.height * .5,
                      child: Image.asset(
                        "assets/welcome.png",
                        fit: BoxFit.fitHeight,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
