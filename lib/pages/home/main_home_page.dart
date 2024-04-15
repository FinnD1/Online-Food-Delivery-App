import 'package:flutter/material.dart';
import 'package:flutter_basic_2024/pages/home/food_page_body.dart';
import 'package:flutter_basic_2024/utils/dimensions.dart';
import 'package:flutter_basic_2024/widgets/big_text.dart';
import 'package:flutter_basic_2024/widgets/small_text.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    print("current height is${MediaQuery.of(context).size.height}");
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: 'FinnD',
                        color: Colors.amberAccent,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: 'Xin chao',
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_circle_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          color: Colors.amberAccent), //Appcolor.maincolor
                    ),
                  ),
                ],
              ),
            ),
          ),
          //showing the body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
          // FloatingActionButton(onPressed: onPressed)onPressed
        ],
      ),
    );
  }
}
