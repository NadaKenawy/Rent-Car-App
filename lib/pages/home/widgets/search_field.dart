import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
            child: SizedBox(
          height: size.width * .12,
          child: TextField(
            cursorColor: greyColor,
            decoration: InputDecoration(
                prefix: const Icon(
                  CupertinoIcons.search,
                  color: greyColor,
                  size: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(
                      width: 2, color: greyColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(
                      width: 2, color: backgroundColor),
                ),
                labelStyle:
                    TextStyle(color: greyColor.withOpacity(.7)),
                labelText: "Search Your Dream Car",
                filled: true,
                fillColor: Colors.white),
          ),
        )),
        const SizedBox(
          width: 16,
        ),
        Container(
          width: size.width * .12,
          height: size.width * .12,
          decoration: BoxDecoration(
              color: yellowColor,
              borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            "assets/settings.png",
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
