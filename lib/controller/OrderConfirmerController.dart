import 'package:get/get.dart';
import 'package:livraison_app/Controller/CartController.dart';
import 'package:livraison_app/Controller/FoodController.dart';
import 'package:livraison_app/Controller/RestaurantController.dart';
import 'package:livraison_app/Controller/RestaurantScreen_controller.dart';
import 'package:livraison_app/View/MesCommandes.dart';

import '../View/Food.dart';
import '../classes/commande.dart';
import 'AppController.dart';

class OrderConfirmerController extends GetxController{
  static var sauvgarder =false.obs ;
  void archiveCurrentCommand(Commande c){
    sauvgarder=true.obs ;
    AppController.user.Commandes.add(c);
    for(Food food in CartController.commande.plats) {
      food.ajouter.value=false;
    }
   CartController.commande= Commande('', '' , '' ,restaurant:'',plats:<Food>[].obs,etat: '');
    update() ;

  }
}