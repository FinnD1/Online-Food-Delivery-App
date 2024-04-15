import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic_2024/utils/colors.dart';
import 'package:flutter_basic_2024/utils/dimensions.dart';
import 'package:flutter_basic_2024/widgets/app_column.dart';
import 'package:flutter_basic_2024/widgets/big_text.dart';
import 'package:flutter_basic_2024/widgets/icon_and_text_widget.dart';
import 'package:flutter_basic_2024/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageView = 0.0;
  double scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageView = pageController.page!;
        // print("current value is$_currPageView");
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slide section
        Container(
          // color: Colors.yellowAccent,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        // dots
        DotsIndicator(
          dotsCount: 5,
          position: _currPageView,
          decorator: DotsDecorator(
            activeColor: Colors.blueAccent,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        //Popular Text
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          margin: EdgeInsets.only(
              left: Dimensions.width30, right: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end, //food pairing bottom
            children: [
              BigText(text: "Popular", size: Dimensions.font20),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food pairing"),
              ),
            ],
          ),
        ),
        // List of Food
        ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              //khi dùng listview phải dùng thêm srinkwarp thay vì dùng container (dùng container lồng ở ngoài sẽ k kéo hết được nội dung ở dưới
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      bottom: Dimensions.width20),
                  child: Row(
                    children: [
                      //Image section
                      Container(
                        width: Dimensions.listViewImg,
                        height: Dimensions.listViewImg,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/food3.png")),
                          color: Colors.white,
                        ),
                      ),
                      //Text Container
                      Expanded(
                          child: Container(
                          //không thể để mặc định 1 giá trị đc vì khi thay đổi trên thiết bị bé hơn thì sẽ bi lỗi giao diện
                          height: Dimensions.listViewTextContSize,
                          // width: Dimensions.listViewImg,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius20),
                              bottomRight: Radius.circular(Dimensions.radius20),
                            ),
                            color: Colors.white10,
                          ),
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: Padding(
                            padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(
                                  text: "Bánh mì kiểu pháp",
                                  // size: Dimensions.font20,
                                ),
                                SizedBox(
                                  height: Dimensions.width10,
                                ),
                                SmallText(text: "Cùng với sữa ông thọ"),
                                SizedBox(
                                  height: Dimensions.width10,
                                ),
                                Row(
                                  children: [
                                    IconAndTextWidget(
                                        icon: Icons.circle_sharp,
                                        text: "Normal",
                                        iconColor: Colors.red),
                                    IconAndTextWidget(
                                        icon: Icons.location_on,
                                        text: "1.7km",
                                        iconColor: Colors.blueAccent),
                                    IconAndTextWidget(
                                        icon: Icons.access_time_rounded,
                                        text: "32min",
                                        iconColor: Colors.green),
                                  ],
                                ),
                              ],
                            ),
                          )
                      )),
                    ],
                  ),
                );
              }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix4 = new Matrix4.identity();
    if (index == _currPageView.floor()) {
      var currScale = 1 - (_currPageView - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageView.floor() + 1) {
      var currScale = scaleFactor + (_currPageView - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageView.floor() - 1) {
      var currScale = 1 - (_currPageView - index) * (1 - scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix4,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Ảnh 1.png")),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageTextViewContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                  ]),
              child: AppColumn(text: "Xin chao moi nguoi",),
            ),
          )
        ],
      ),
    );
  }
}
