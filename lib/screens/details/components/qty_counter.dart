import 'package:flutter/material.dart';

import '../../../constant.dart';

class QtyCounter extends StatelessWidget {
  const QtyCounter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Details',
          style: TextStyle(
            fontSize: 18.0,

          ),
        ),
        Row(
          children: [
            QtyButton(
              tap: () {},
              text: '-',
            ),

            SizedBox(width: 10.0,),

            Text(
              '1',
              style: TextStyle(
                  fontSize: 18.0
              ),
            ),

            SizedBox(width: 10.0),

            QtyButton(
              tap: () {},
              text: '+',
            ),
          ],
        )
      ],
    );
  }
}

class QtyButton extends StatelessWidget {
  const QtyButton({
    Key? key,
    required this.text,
    required this.tap,
  }) : super(key: key);

  final String text;
  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: 30.0,
        height: 30.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                kDefaultPadding * 0.5),
            color: Colors.white
        ),
        child: Text(
          text,
          style: TextStyle(
              color: kRedColor,
              fontSize: 18.0
          ),
        ),
      ),
    );
  }
}