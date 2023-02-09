import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:livraison_app/Controller/AppController.dart';
import 'package:livraison_app/Controller/CartController.dart';
import 'package:livraison_app/View/LoginScreen.dart';
import 'package:livraison_app/View/OrderConfirmer.dart';

import '../Controller/ConfirmationOrderController.dart';
import '../Themes/Theme.dart';
import 'package:intl/intl.dart';


class ConfirmationOrdersScreen extends StatelessWidget {
  const ConfirmationOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfirmationOrderController controller =Get.put(ConfirmationOrderController() , permanent: true) ;
    return
      SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Row(
            children: [
              Spacer(flex: 1,) ,
              Expanded(
                flex: 29,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 1,) ,
                    Positioned(
                      top: 10.h,
                      left: 13.w,
                      child: SizedBox(
                        height: 28.h,
                        width: 29.w,
                        child: FloatingActionButton(
                          heroTag: null,
                          foregroundColor:  Color(0xffDFDFDF) ,
                          onPressed: () {
                            Get.back() ;
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 20.sp,
                          ),
                          backgroundColor: Color(0xffDFDFDF),
                        ),
                      ),
                    ),
                    Spacer(flex: 1,) ,
                    AutoSizeText('Vos informations' ,
                        textAlign: TextAlign.start,
                        style: theme().textTheme.headline1
                    ) ,                          // Vos informations
                    Spacer(flex : 1 ) ,
                    AutoSizeText("Veuillez vérifier vos commandes, une fois que vous aurez confirmé votre achat, vous n’aurez pas le droit d’annuler." ,
                        textAlign: TextAlign.start,
                        style: theme().textTheme.headline5

                    ) ,                         //Text
                    Spacer(flex:1) ,
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.r) ,
                          color: Color(0xffE4E4E4) ,
                        ),
                        width: 401.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Spacer(flex: 1,) ,
                            Image.asset('assets/images/camion.png'),
                            Spacer(flex: 1,) ,
                            Expanded(
                              flex: 29,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  AutoSizeText( 'Votre adresse\n${AppController.user.Adresse}',
                                    textAlign: TextAlign.start,
                                    style: theme().textTheme.bodyText1,) ,

                                ],
                              ),
                            ) ,
                            TextButton(
                              onPressed: () { Navigator.pushNamed(context,'/adresse'); },
                              child: AutoSizeText(
                                'Modifier' ,
                                textAlign: TextAlign.start,
                                style: theme().textTheme.bodyText1?.copyWith(color: Color(0xffE6424B)) ,
                              ),
                            )
                          ],
                        )

                    ),
                    Spacer(flex: 1,) ,
                    Container(
                      height:383.h ,
                      width: 401.w,
                      child: TextField(
                        controller: controller.message,
                        maxLines: 20,
                        cursorColor: Colors.black ,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          hintText: 'Écrire un message ( optionnelle )'  ,
                          hintStyle: theme().textTheme.headline4?.copyWith(color :Color(0xff9F9999) , fontWeight: FontWeight.normal ) ,
                          labelStyle:  theme().textTheme.headline4?.copyWith(color :Colors.black , fontWeight: FontWeight.normal ) ,

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9.r)  ,
                              borderSide: BorderSide.none) ,
                          filled: true ,
                          fillColor: Color(0xffE4E4E4),

                        ),

                      ),
                    ),
                    Spacer(flex: 2,) ,
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
                            controller.confirm_command();
                            Get.to(OrderConfirmerScreen());
                          },
                          child: AutoSizeText('Confirmer' ,
                              style: theme().textTheme.headline2
                          )),
                    ) ,
                    Spacer(flex: 6,)
                  ],
                ),
              ),
              Spacer(flex: 1,) ,
            ],
          ) ,
        ),
      );
  }
}
