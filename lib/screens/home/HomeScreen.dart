import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_food/components/app_bar.dart';
import 'package:nutrition_food/components/bottom_nav_bar.dart';
import 'package:nutrition_food/constant.dart';
import 'package:nutrition_food/models/Item.dart';

import 'components/categories.dart';
import 'components/filter_button.dart';
import 'components/item_card.dart';
import 'components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cbuildAppBar(context,
          title: '',
          leading: Transform.translate(
            offset: Offset(kDefaultPadding * 0.5, 0),
            child: IconButton(
              icon: Image.asset('assets/images/user.png'),
              onPressed: () {},
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icon/notification.svg'))
          ]),
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Temukan Asupan Terbaik Untuk Kesehatanmu',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: kDefaultPadding),
              SearchBar(),
              Row(
                children: [
                  FilterButton(),
                  Expanded(
                    child: Categories(),
                  )
                ],
              ),
              SizedBox(height: kDefaultPadding),

              Text(
                'Populer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
                ),
              ),
              SizedBox(height: kDefaultPadding),
              StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: dataItems.length,
                  crossAxisSpacing: 10.0,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index) {
                    return ItemCard(item: dataItems[index], index: index,);
                  },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              )
            ],
          ),
        ),
      ),
    );
  }
}






