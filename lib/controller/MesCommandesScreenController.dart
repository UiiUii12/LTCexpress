import 'package:get/get.dart';
import 'package:livraison_app/Controller/AppController.dart';
import 'package:livraison_app/Controller/CartController.dart';
import 'package:livraison_app/classes/commande.dart';
import 'package:livraison_app/classes/plat.dart';

import '../View/Food.dart';
import 'CartController.dart';


class MesCommandesScreenController extends GetxController{


  double coutPartiel(List<Food> plats){
    double somme=0;
    for(int i=0;i<plats.length;i++){
      somme=somme+plats[i].prix;
    }
    return somme;
  }
  double coutTotal(List<Food> plats){
    return coutPartiel(plats)+500;
  }
  /*@override
  String toString(){
    return this.date+' '+this.etat;
  }*/
@override
  void onInit() {
    //archiveCurrentCommand();
    super.onInit();
  }
}