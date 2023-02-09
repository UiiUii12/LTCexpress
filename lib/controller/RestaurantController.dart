import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:livraison_app/View/Food.dart';
import 'package:livraison_app/View/Food_Search.dart';
import 'package:livraison_app/View/Restaurant.dart';
import 'package:get/get.dart';
import 'package:livraison_app/classes/Category.dart';
import 'package:livraison_app/classes/OpenTime.dart';

class RestaurantController extends GetxController {
  var time = DateTime.now().obs;
  final List<Restaurant> restaurants = [
    Restaurant(
      image: 'assets/images/rest.jpg',
      name: 'DamiS',
      category: [
        Category('Pizza','assets/images/pizza.svg',[
          Food(
            image: 'asstes/images/Pizza.png',
            name: 'Pizza Poulet',
            prix: 500,
            description: 'Fromage, Poulet, Sauce Fromage',
            ajouter: false.obs,
          ),
          Food(
            image: 'assets/images/Pizza.png',
            name: 'Mega Pizza',
            prix: 500,
            description: 'Fromage, Poulet, Sauce Fromage',
            ajouter: false.obs,
          ),
          Food(
            image: 'assets/images/Pizza.png',
            name: 'Mega Pizza',
            prix: 500,
            description: 'Fromage, Poulet, Sauce Fromage',
            ajouter: false.obs,
          ),
          Food(
            image: 'assets/images/Pizza.png',
            name: 'Mega Pizza',
            prix: 500,
            description: 'Fromage, Poulet, Sauce Fromage',
            ajouter: false.obs,
          ),
          Food(
            image: 'assets/images/Pizza.png',
            name: 'Pizza 4 Fromages',
            prix: 500,
            description: 'Fromage, Poulet, Sauce Fromage',
            ajouter: false.obs,
          )
        ]),
        Category('Tacos','assets/images/tacos.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: ' Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ], ),
        Category( 'Tacos','assets/images/tacos.svg',[]),
        Category( 'Burger','assets/images/burger.svg',[])
      ].obs,
      adress: 'Oran ,Oran',
      state: true,
      openTime: OpenTime(
          TimeOfDay(hour: 23, minute: 32), TimeOfDay(hour: 21, minute: 46)),
    ),
  ];

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
}
