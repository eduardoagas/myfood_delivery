import 'package:flutter/material.dart';
import 'package:myfood_delivery/utils/dimensions.dart';
import 'package:myfood_delivery/widgets/app_column.dart';
import 'package:myfood_delivery/widgets/app_icon.dart';
import 'package:myfood_delivery/widgets/big_text.dart';
import 'package:myfood_delivery/widgets/expandable_text_widget.dart';
import 'package:myfood_delivery/widgets/icon_and_text_widget.dart';
import 'package:myfood_delivery/widgets/small_text.dart';

import '../../utils/colors.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/food0.png"))),
              )),
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          topLeft: Radius.circular(Dimensions.radius20)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(text: "Chinese Side"),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      BigText(text: "Introduce:"),
                      SizedBox(height: Dimensions.height20),
                      //ExpandableTextWidget(text: "oi seu pai tem boi")
                      Expanded(
                        child: SingleChildScrollView(
                          child: ExpandableTextWidget(
                              text:
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean iaculis iaculis nisi et hendrerit. Aliquam molestie, nunc quis suscipit aliquam, ipsum augue congue leo, eu gravida nulla velit quis purus. Quisque consectetur iaculis condimentum. Sed a dolor vestibulum, bibendum felis eu, gravida lacus. Vivamus ullamcorper neque elit. Praesent orci leo, aliquam vitae purus hendrerit, cursus volutpat ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a vehicula ligula. Aliquam sapien lacus, pretium eget mauris quis, congue sodales nis"),
                        ),
                      )
                    ],
                  )))
        ],
      ),
      bottomNavigationBar: Container(
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
              child: Row(children: [
                Icon(
                  Icons.remove,
                  color: AppColors.signColor,
                ),
                SizedBox(
                  width: Dimensions.width10 / 2,
                ),
                BigText(text: "0"),
                SizedBox(
                  width: Dimensions.width10 / 2,
                ),
                Icon(
                  Icons.add,
                  color: AppColors.signColor,
                )
              ]),
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
              child: BigText(text: "\$10 | Add to cart", color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
