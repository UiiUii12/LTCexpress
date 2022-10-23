import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livraison_app/controller/AppController.dart';

import 'currentPage.dart';



class AdresseScreen extends StatelessWidget {
  AdresseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(permanent: true, AppController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Spacer(flex: 10,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AutoSizeText(
                      'Ajouter votre adresse',
                      maxLines: 2,
                      style: TextStyle(fontSize: 28, fontFamily: 'Golos'
                      ),
                    ),
                  ),
                )
              ],
            ),
            Spacer(flex: 1,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AutoSizeText(
                      'Pour faciliter la livraison de vos produits, vous\ndevez ajouter votre adresse .',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff807F7F),
                        fontFamily: 'Golos',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 3,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AutoSizeText(
                      'Adresse',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Golos',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 1,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(9)),
                    height: 50,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        style: TextStyle(
                            fontFamily: 'Golos',
                            fontSize: 18),
                        cursorColor: Colors.grey,
                        enabled: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                              EvaIcons.searchOutline,
                              color: Color(0xff9D9D9D),
                          ),
                          hintText: 'Ajouter votre adresse',
                          hintStyle: TextStyle(
                            fontFamily: 'Golos',
                            fontSize: 18,
                            color: Color(0xff9D9D9D),
                          ),
                          counterText: "",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.transparent,
                          isCollapsed: true,
                        ),
                        keyboardType: TextInputType.streetAddress,
                        textInputAction: TextInputAction.done,
                        textAlignVertical: TextAlignVertical.center,
                        controller: controller.Adresse,
                        onChanged: (value){
                          controller.onSubmitAdresse();
                        },
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
            Spacer(flex: 4,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Container(
                    height: 50,
                    child: GetBuilder(
                      builder:(AppController controller)=> ElevatedButton(
                        onPressed: controller.submitAdresse?() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Main_Page()));
                        }:null,
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontFamily: 'Golos',
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffE6424B),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9.0),
                               )),
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
            Spacer(flex:54,),
          ],
        ),
      ),
    );
  }
}
