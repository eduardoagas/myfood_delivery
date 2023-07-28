import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myfood_delivery/utils/colors.dart';
import 'package:myfood_delivery/utils/dimensions.dart';
import 'package:myfood_delivery/widgets/app_icon.dart';
import 'package:myfood_delivery/widgets/big_text.dart';
import 'package:myfood_delivery/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          toolbarHeight: 70,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            AppIcon(icon: Icons.clear),
            AppIcon(
              icon: Icons.shopping_cart_outlined,
            )
          ]),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
                child: Center(
                    child: BigText(
                        size: Dimensions.font26, text: "Sliver app bar"))),
          ),
          pinned: true,
          backgroundColor: AppColors.yellowColor,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/image/food0.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: ExpandableTextWidget(
                  text: "Cras venenatis, nulla nec aliquam fermentum, nulla diam imperdiet nisl, vel blandit odio erat non purus. Aliquam vehicula nisl ligula, vel tristique neque fermentum ut. Duis tristique ut nunc non pellentesque. Pellentesque in hendrerit erat. Nunc gravida eget risus quis feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis efficitur mauris quis convallis sollicitudin. Fusce placerat neque non tincidunt accumsan. Vivamus eros lorem, dictum quis sagittis vitae, iaculis ut nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque vitae cursus lectus, vel tincidunt sapien. Mauris egestas urna eros, et tempus enim congue et. Phasellus varius dignissim fringilla. Phasellus elit magna, vehicula at ipsum et, blandit finibus eros. Suspendisse placerat sodales quam, a aliquet tellus faucibus vitae." +
                      "Phasellus sit amet semper odio. Quisque mollis nulla quis varius blandit. In commodo gravida tellus, ut scelerisque enim feugiat non. Pellentesque auctor volutpat urna, ac tincidunt ex malesuada eu. Aliquam placerat commodo libero, et consectetur felis malesuada eget. Etiam a dictum justo. Morbi et nibh eros. Proin ullamcorper vehicula purus, mattis pulvinar enim accumsan ut. Sed tempor id turpis in dapibus. Vestibulum a nisi varius, scelerisque velit accumsan, fringilla elit." +
                      "Aenean maximus elit eget massa bibendum, in posuere elit aliquam. In hac habitasse platea dictumst. Quisque nec turpis magna. Aliquam lectus diam, porttitor sed tincidunt eget, fringilla vel dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris sollicitudin, diam sed scelerisque consequat, nulla tellus ultrices eros, eget semper enim risus in arcu. Etiam ullamcorper ac diam nec elementum. Suspendisse faucibus ut libero eget semper. Vivamus ac leo nec dui vehicula faucibus vitae ut risus. Phasellus ac urna ac odio tincidunt dapibus at et enim. Phasellus risus nisi, posuere id pharetra in, laoreet id augue. Donec ornare lorem eu libero congue placerat. Morbi lobortis odio tempus sodales lacinia. Integer a eleifend leo. Praesent condimentum risus nec orci egestas, sed scelerisque quam blandit. Phasellus ornare dui id tortor sagittis, sit amet dictum tellus accumsan."),
            )
          ],
        )),
      ]),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: " \$12.88 " + " x " + " 0 ",
                  size: Dimensions.font26,
                  color: AppColors.mainBlackColor,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                //color: AppColors.buttonBackgroundColor,
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      left: Dimensions.width20,
                      bottom: Dimensions.height20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.favorite, color: AppColors.mainColor),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      left: Dimensions.width20,
                      bottom: Dimensions.height20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                  child:
                      BigText(text: "\$10 | Add to cart", color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
