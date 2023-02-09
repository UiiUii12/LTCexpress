import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livraison_app/Controller/AppController.dart';
import 'package:livraison_app/Controller/LoginScreenController.dart';


class AdresseScreenController extends GetxController{
@override
  void onClose() {
    Adresse.dispose();
    super.onClose();
  }
  bool submitAdresse=false;
  final Adresse= new TextEditingController();
  void onSubmitAdresse() {
    submitAdresse=Adresse.text.isNotEmpty;
    update();
  }
void addAdresseUser(String adresse){
  AppController.user.Adresse=adresse;
}

}