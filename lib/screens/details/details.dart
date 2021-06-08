import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrition_food/components/app_bar.dart';
import 'package:nutrition_food/models/Item.dart';

import '../../constant.dart';
import 'components/buy.dart';
import 'components/ingredients.dart';
import 'components/qty_counter.dart';
import 'components/title_bar.dart';
import 'components/vitamins.dart';

class DetailScreen extends StatelessWidget {
  final Item item;

  const DetailScreen({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: cbuildAppBar(context,
          title: 'Detail',
          leading: Transform.translate(
            offset: Offset(kDefaultPadding * 0.5, 0),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/back.svg'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/dots.svg'))
          ]),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            padding: EdgeInsets.only(top: size.height * 0.2),
            height: size.height * 0.8,
            decoration: BoxDecoration(
                color: Color(item.color),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 5),
                  topRight: Radius.circular(kDefaultPadding * 5),
                )),
            child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(
                    kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
                child: SafeArea(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleBar(item: item),
                    SizedBox(height: kDefaultPadding),
                    QtyCounter(),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      item.description,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Vitamins(item: item),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      'Resep',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Ingrediants(item: item),
                    SizedBox(
                      height: kDefaultPadding,
                    ),

                    Buy(item: item)
                  ],
                ))),
          ),
          Hero(
            tag: item.id,
            child: Image.asset(item.image,
                height: size.height * 0.4, fit: BoxFit.fitHeight),
          )
        ],
      ),
    );
  }
}


