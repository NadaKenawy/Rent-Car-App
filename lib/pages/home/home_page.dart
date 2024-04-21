import 'package:flutter/material.dart';
import 'package:rent_car_app/colors.dart';
import 'package:rent_car_app/pages/home/widgets/bottom_nav_bar.dart';
import 'package:rent_car_app/pages/home/widgets/home_app_bar.dart';
import 'package:rent_car_app/pages/home/widgets/scrollable_brand.dart';
import 'package:rent_car_app/pages/home/widgets/scrollable_cars.dart';
import 'package:rent_car_app/pages/home/widgets/search_field.dart';
import 'package:rent_car_app/pages/home/widgets/text_and_more_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body(context),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }

  Widget body(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              height: size.height * .25,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeAppBar(),
                  Text(
                    "Search Your Dream\nSuper Car To Drive",
                    style: TextStyle(
                        color: backgroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  SearchField(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: size.width,
            height: size.height * .6,
            decoration: const BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextAndMoreRow(text: 'Top Brands'),
                ScrollableBrands(),
                TextAndMoreRow(text: 'Recommendations'),
                SizedBox(height: 12),
                ScrollableCars(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
