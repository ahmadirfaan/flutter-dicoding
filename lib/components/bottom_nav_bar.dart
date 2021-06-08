import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class NavItem extends StatelessWidget {

  const NavItem({
    key, required this.icon, required this.tap,
  }) : super(key: key);

  final String icon;
  final GestureTapCallback tap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: SvgPicture.asset(icon),
    );
  }
}

class BottomNavBar extends StatelessWidget {

  const BottomNavBar({
    key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0)
      ),
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            icon: 'assets/icons/home.svg',
            tap: () {},
          ),
          NavItem(
            icon: 'assets/icons/chat.svg',
            tap: () {},
          ),
          NavItem(
            icon: 'assets/icons/buy.svg',
            tap: () {},
          ),
          NavItem(
            icon: 'assets/icons/profile.svg',
            tap: () {},
          ),
        ],
      ),
    );
  }

}