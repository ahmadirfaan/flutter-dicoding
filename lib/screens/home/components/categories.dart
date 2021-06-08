import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_food/models/Category.dart';

import '../../../constant.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding),
      child: SizedBox(
          height: 35.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dataCategory.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        this.selectedIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white
                      ),
                      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.8),
                      margin: EdgeInsets.only(right: kDefaultPadding * 0.5),
                      child: Row(
                        children: [
                          SvgPicture.asset(dataCategory[index].icon),

                          SizedBox(width: 5.0,),

                          Text(
                            dataCategory[index].name,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: kPrimaryColor,
                              fontWeight: selectedIndex == index ?
                              FontWeight.bold : FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                    )
                );
              }
          )
      ),
    );
  }
}