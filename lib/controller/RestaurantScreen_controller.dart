import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:livraison_app/View/Food.dart';
import 'package:livraison_app/View/currentPage.dart';
import 'package:livraison_app/classes/Category.dart';
import 'package:livraison_app/classes/OpenTime.dart';
import '../View/CartScreen.dart';
import '../View/HomeScreen.dart';
import '../View/MesCommandes.dart';
import '../View/SearchScreen.dart';
import 'CartController.dart';
import 'FoodController.dart';

class RestaurantScreen_controller extends GetxController
    with GetTickerProviderStateMixin {
 //  RxList <Food> List_of_food  =<Food>[].obs ;
  bool is_loaded = false;
  late TabController tabController;

  List<Widget> tabs(List<Category> cat) {
    List<Widget> tb = [];
    for (Category category in cat)
      (tb.add(AutoSizeText(
        category.nom_cat,
        textAlign: TextAlign.start,
      )));
    return tb;
  }

  void inisialize(int category_length, int selected_item) {
    tabController = TabController(
        length: category_length, vsync: this, initialIndex: selected_item);
  }

  Future loading() async {
    is_loaded = false;
    await Future.delayed(Duration(seconds: 1), () {});
    is_loaded = true;
    update();
  }

  void time_change_detector(OpenTime range, var isOpened) {
    var now = DateTime.now().obs;
    var nextMinute = DateTime(now.value.year, now.value.month, now.value.day,
        now.value.hour, now.value.minute + 1);
    Timer(nextMinute.difference(now.value), () {
      Timer.periodic(Duration(minutes: 1), (timer) {
        is_opened(DateTime.now(), range, isOpened);
        update();
      });
      update();
    });
  }

  void is_opened(DateTime time, OpenTime range, var is_opened) {
    if (time.hour < range.openHour.hour ||
        time.hour > range.closeHour.hour ||
        (time.hour == range.openHour.hour &&
            time.minute < range.openHour.minute) ||
        (time.hour == range.closeHour.hour &&
            time.minute > range.closeHour.minute)) {
      is_opened.value = false;
    } else {
      is_opened.value = true;
    }

    update();

  }

  void ListOfFood(List continuer, var somme) {
    for (var plat in continuer) {
      somme.value = somme.value + plat.prix * plat.counter.value;
    }

    update();
  }

  @override
  void onInit() {
    Get.put(FoodController());
    super.onInit();
    loading();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
  void continuer ( String name,RxList<Food> list)
    {
      CartController.commande.restaurant=name ;
      CartController.commande.plats=list.value ;
      Main_Page.interfaces=[ HomeScreen(),SearchScreen() ,  CartScreen()  ,MesCommandesScreen()];
      Main_Page.currentindex=2 ;
      Get.to(Main_Page()) ;
      update();
  }
   void Go_back(List<Category> category) {
  for (Category cat in category) {
      for(Food food in cat.plat){
        int index=CartController.commande.plats.indexOf(food);
        index==-1? (){food.ajouter.value=false;}():food.ajouter.value=true;
      }
       }
  print(CartController.commande.plats.length);
   update();
     }


  }

