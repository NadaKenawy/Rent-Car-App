import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car_app/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height * .08,
        child: BottomNavigationBar(
          backgroundColor: secbackgroundColor,
          unselectedItemColor: Colors.grey,
          selectedItemColor: yellowColor,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: isSelected,
          onTap: (value) => setState(() {
            isSelected = value;
          }),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_alt_fill), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled), label: ""),
          ],
        ));
  }
}
