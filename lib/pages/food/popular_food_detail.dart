import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic_2024/utils/dimensions.dart';
import 'package:flutter_basic_2024/widgets/app_column.dart';
import 'package:flutter_basic_2024/widgets/app_icons.dart';
import 'package:flutter_basic_2024/widgets/expanable_text_widget.dart';
import 'package:get/get.dart';

import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Scaffold(
        body: Stack(
          children: [
            //background image
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: Dimensions.popularFoodImaSize,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/Ảnh 5.png"))),
                )),
            //icon widget
            Positioned(
                top: 45,
                left: Dimensions.width20,
                right: Dimensions.width20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcons(icon: Icons.arrow_back_ios),
                    AppIcons(icon: Icons.shopping_cart_outlined),
                  ],
                )),
            // introduce of food
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: Dimensions.popularFoodImaSize - 20,
                child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(
                        text: "Food Delivery",
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(
                        text: 'Introduce',
                      ),
                      SizedBox(height: Dimensions.height20,),
                      Expanded(
                          child: SingleChildScrollView(
                              child: ExpanableTextWidget(
                                  text:
                                      "Kinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệt. Chính vì thế, có rất nhiều người đã phải chịu thua lỗ, thậm chí rút lui khỏi thị trường này nếu không có những chiến lược kinh doanh đúng đắn cũng như khâu quản lý shop thời trang hiệu quả.Từ việc tổng hợp kinh nghiệm quản lý cửa hàng thời trang của nhiều đơn vị, Phần mềm quản lý shop hiệu quả sẽ góp phần đem lại doanh thu lớn, phù hợp với những người mới bắt đầu kinh doanh. Hãy cùng theo dõi để 'bỏ túi' ngay cho mình những bí quyết thành công này nhé!Kinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệt. Chính vì thế, có rất nhiều người đã phải chịu thua lỗ, thậm chí rút lui khỏi thị trường này nếu không có những chiến lược kinh doanh đúng đắn cũng như khâu quản lý shop thời trang hiệu quả.Từ việc tổng hợp kinh nghiệm quản lý cửa hàng thời trang của nhiều đơn vị, Phần mềm quản lý shop hiệu quả sẽ góp phần đem lại doanh thu lớn, phù hợp với những người mới bắt đầu kinh doanh. Hãy cùng theo dõi để 'bỏ túi' ngay cho mình những bí quyết thành công này nhé!"))),
                    ],
                  ),
                )),
            // expandable text widget
          ],
        ),
        bottomNavigationBar: Container(
          height: Dimensions.bottomHeight,
          padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius30),
                topLeft: Radius.circular(Dimensions.radius30)),
            color: Colors.blueAccent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    right: Dimensions.width20 / 2,
                    left: Dimensions.width20 / 2,
                    bottom: Dimensions.height20 / 2,
                    top: Dimensions.height20 / 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.remove,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: Dimensions.width10 / 2,
                    ),
                    BigText(
                      text: "0",
                    ),
                    SizedBox(
                      width: Dimensions.width10 / 2,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    right: Dimensions.width20 / 2,
                    left: Dimensions.width20 / 2,
                    bottom: Dimensions.height20 / 2,
                    top: Dimensions.height20 / 2),
                child: BigText(
                  text: "0\$ | Add to cart",
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
