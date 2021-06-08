import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_food/models/Item.dart';

import '../../../constant.dart';

class Ingrediants extends StatelessWidget {
  const Ingrediants({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.ingrediants.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultPadding),
              color: Colors.white,
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: kDefaultPadding),
            width: 50.0,
            child: SvgPicture.asset(
                item.ingrediants[index]
            ),
          );
        },
      ),
    );
  }
}
