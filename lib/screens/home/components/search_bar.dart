import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

class SearchBar extends StatelessWidget {

  const SearchBar({key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          fillColor: Colors.white,
          filled: true,
          contentPadding:
          EdgeInsets.symmetric(horizontal: kDefaultPadding),
          prefixIcon: SvgPicture.asset(
            'assets/icons/search.svg',
            fit: BoxFit.scaleDown,
          ),
          hintText: 'Cari Nutrisi Anda'
      ),
    );
  }

}