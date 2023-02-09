import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:livraison_app/View/AdresseScreen.dart';
import 'package:flutter/services.dart';
import 'package:livraison_app/View/MesCommandes.dart';

import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'OTPScreen.dart';
import 'OrderConfirmer.dart';
import 'SplashScreen.dart';
import 'WelcomeScreen.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: ( context, Widget? child) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
    ),

    routes: {
      '/': (context) => SplashScreen(),
      'login':(context)=>LoginScreen(),
      '/acceuil': (context) => HomeScreen(),
      '/otp': (context) => OTPScreen(phoneNumber: null,),
      '/adresse': (context) => AdresseScreen(),
      '/welcome': (context) => WelcomeScreen(),
      '/orderconfirmer': (context) => OrderConfirmerScreen(),
      '/mescommandes': (context) => MesCommandesScreen(),
     },
    );

    }
   );
  }
}


