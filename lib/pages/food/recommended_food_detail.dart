import 'package:flutter/material.dart';
import 'package:project_bella/widgets/app_icon.dart';
import 'package:project_bella/widgets/big_text.dart';
import 'package:project_bella/widgets/expandable_text_widget.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';


class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),

              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(

                child: Center(child: BigText(size: Dimensions.font26, text: "Chinese slide")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)
                )
                ),
              ) ,
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 350,
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
                  child: ExpandableTextWidget(text: "Chicken mad fat while limiting carbs. But research shows that they seem to primarily work well only in the short-term. One reason may be that people aren’t able to stick with this type of eating plan over a long period of time. Be mindful of what diets you try. Focusing just on protein and fat can keep you from getting all the nutrients you need, and that can lead to unhealthy side effects. That can lead to fatigue, dizziness, headaches, bad breath and constipation.Chicken marinated Some weight-loss programs, like the Atkins Diet and the Ketogenic Diet, call for high amounts of protein and fat while limiting carbs. But research shows that they seem to primarily work well only in the short-term. One reason may be that people aren’t able to stick with this type of eating plan over a long period of time. Be mindful of what diets you try. Focusing just on protein and fat can keep you from getting all the nutrients you need, and that can lead to unhealthy side effects. That can lead to fatigue, dizziness, headaches, bad breath and constipation.",),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            )
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right : Dimensions.width20*2.5,
              top:  Dimensions.height10,
              bottom: Dimensions.height10,

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor:Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(text: "\Rs.1250"+" X "+" 0 " , color: AppColors.mainBlackColor,size: Dimensions.font26,),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor:Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),

              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20*2),
                  topRight: Radius.circular(Dimensions.radius20*2),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                  child: BigText(text:"\Rs.1250 Add to cart" , color: Colors.white,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
