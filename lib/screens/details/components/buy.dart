import 'package:flutter/material.dart';
import 'package:nutrition_food/models/Item.dart';

import '../../../constant.dart';

class Buy extends StatelessWidget {
  const Buy({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Text(
                'Harga',
                style: TextStyle(
                    fontSize: 18.0
                ),
              ),
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Rp ',
                            style: TextStyle(
                                color: kRedColor,
                                fontSize: 22.0
                            )
                        ),
                        TextSpan(
                            text: item.price.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0
                            )
                        )
                      ]
                  )
              )
            ],
          ),
        ),


        Spacer(),

        Expanded(
          flex: 3,
          child: BuyButton(
            tap: () {},
          ),
        )
      ],
    );
  }
}

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key? key,
    required this.tap
  }) : super(key: key);

  final GestureTapCancelCallback tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kDefaultPadding * 2),
            color: kRedColor
        ),
        height: 50.0,
        alignment: Alignment.center,
        child: Text(
          'Beli Sekarang',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18.0
          ),
        ),
      ),
    );
  }
}