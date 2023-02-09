import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:livraison_app/Controller/AppController.dart';
import 'package:livraison_app/View/CartScreen.dart';
import 'package:livraison_app/Controller/CartController.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class ConfirmationOrderController extends GetxController{
  final message = new TextEditingController();
  void confirm_command(){
    CartController.commande.numero_commande=generate_num_command();
    CartController.commande.message=message.text;
    CartController.commande.date=DateFormat('dd-MM-yyyy  kk:mm').format(DateTime.now());
    CartController.commande.etat='En cours' ;
    update();
  }
  String generate_num_command(){
    const char='0123456789aAzZeErRtTyYuUiIoOpPqQsSdDfFgGhHjJkKlLmMwWxXcCvVbBnN';
    Random _rnd=Random();
    return String.fromCharCodes(Iterable.generate(9,(_)=> char.codeUnitAt(_rnd.nextInt(char.length))));
  }
}