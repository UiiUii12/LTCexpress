import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:livraison_app/Controller/Restaurants_controller.dart';
import 'package:livraison_app/Themes/Theme.dart';
import 'package:livraison_app/Controller/OnBoardingController.dart';
import 'package:livraison_app/View/LoginScreen.dart';
import 'Dots.dart';
import 'OnBoardContent.dart';


class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  OnBoardingController controller = Get.put(OnBoardingController() , permanent: true) ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body :  GetBuilder<OnBoardingController> (

            builder: ((controller) =>
        Column(
          children: [

            Expanded(
              child: PageView.builder(
                  physics: BouncingScrollPhysics(),
                  onPageChanged: controller.onchange ,
                  controller: controller.controller,
                  itemCount: controller.pages.length,
                  itemBuilder: (context, index) =>
                      OnBoardContent(description: controller.pages[index].description,
                        title: controller.pages[index].title, image: controller.pages[index].image,)),
            ),
            SizedBox(height : 32.h) ,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(controller.pages.length, (index) => Row(
                  children: [
                    Dots(isActive: index==controller.page_index),
                    SizedBox(width: 6.w,),
                  ],
                )),

              ],
            ) ,
            SizedBox(height: 32.h,) ,
            Container(
              height: 56.h,
              width: 401.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: theme().primaryColor ,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          side: BorderSide(color: Colors.red))),
                  onPressed: () {
                   Get.to(() => LoginScreen()) ;
                  ; },
                  child: AutoSizeText('Continue' ,
                    style: theme().textTheme.headline2
                  )
                  ),

            ) ,
            SizedBox(height: 84.h,) ,

          ],
        )))
    );
  }
}
