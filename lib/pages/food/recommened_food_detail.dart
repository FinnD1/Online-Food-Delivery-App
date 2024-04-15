import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_basic_2024/utils/dimensions.dart';
import 'package:flutter_basic_2024/widgets/expanable_text_widget.dart';

import '../../widgets/app_icons.dart';
import '../../widgets/big_text.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(icon: Icons.clear),
                AppIcons(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                  text: "Sliver App Bar",
                  size: Dimensions.font26,
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.yellow,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food1.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Column(
                  children: [
                    Container(
                      child: ExpanableTextWidget(text:"Kinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệtKinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệt. Chính vì thế, có rất nhiều người đã phải chịu thua lỗ, thậm chí rút lui khỏi thị trường này nếu không có những chiến lược kinh doanh đúng đắn cũng như khâu quản lý shop thời trang hiệu quả.Từ việc tổng hợp kinh nghiệm quản lý cửa hàng thời trang của nhiều đơn vị, Phần mềm quản lý shop hiệu quả sẽ góp phần đem lại doanh thu lớn, phù hợp với những người mới bắt đầu kinh doanh. Hãy cùng theo dõi để 'bỏ túi' ngay cho mình những bí quyết thành công này nhé!Kinh doanh thời trang vẫn là một trong những lĩnh vực “hot” nhất hiện nay khi mỗi năm thu hút hàng nghìn startup trẻ khởi nghiệp cả online lẫn offline, tạo nên một môi trường cạnh tranh khốc liệt. Chính vì thế, có rất nhiều người đã phải chịu thua lỗ, thậm chí rút lui khỏi thị trường này nếu không có những chiến lược kinh doanh đúng đắn cũng như khâu quản lý shop thời trang hiệu quả.Từ việc tổng hợp kinh nghiệm quản lý cửa hàng thời trang của nhiều đơn vị, Phần mềm quản lý shop hiệu quả sẽ góp phần đem lại doanh thu lớn, phù hợp với những người mới bắt đầu kinh doanh. Hãy cùng theo dõi để 'bỏ túi' ngay cho mình những bí quyết thành công này nhé!"),
                    ),
                  ],
                ),
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20*2.5,
                right: Dimensions.width20*2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(icon: Icons.remove,backgroundColor: Colors.blue,iconColor: Colors.white, iconSize: Dimensions.iconSize24,),
                BigText(text: "\$12.88 x0",color: Colors.deepPurple,size: Dimensions.font26,),
                AppIcons(icon: Icons.add,backgroundColor: Colors.blue,iconColor: Colors.white, iconSize: Dimensions.iconSize24,),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 45,
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
        ],
      ),
    );
  }
}
