import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrition_food/models/Item.dart';

import '../../../constant.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              style: TextStyle(
                fontSize: 24.0,

              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/star.svg',
                  width: kDefaultPadding * 0.8,
                )
              ],
            )
          ],
        ),

        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/heart.svg')
        )
      ],
    );
  }
}