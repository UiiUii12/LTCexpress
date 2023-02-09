
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:livraison_app/Controller/HomeScreenController.dart';

class Promotion extends StatefulWidget {
  final String image;
  final String nameRestaurant;
  final String offre;
  final String descriptionOffre;

  const Promotion({Key? key,
    required this.image,
    required this.nameRestaurant,
    required this.offre,
    required this.descriptionOffre,
  }) : super(key: key);

  @override
  State<Promotion> createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {
  @override
  Widget build(BuildContext context) {
    //AppController controller=Get.put(permanent: true , AppController()) ;
     return Container(
       height: 153.h,
       width: 396.w,
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(9.r),
           color: HomeScreenController.ColorsPromo[HomeScreenController.ind.nextInt(7)],
       ),
       child: Row(
         children: [
           SizedBox(width: 10.w,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 21.h,),
               AutoSizeText('${widget.nameRestaurant}',
                 style: TextStyle(fontFamily: 'Golos',fontWeight: FontWeight.w500,fontSize: 15.sp,color: Colors.white),),
               SizedBox(height:6.h,),
               AutoSizeText('${widget.offre}',style:TextStyle(fontFamily: 'Golos',fontWeight: FontWeight.w500,fontSize: 16.sp,color: Colors.white),),
               SizedBox(height:6.h,),
               AutoSizeText('${widget.descriptionOffre}',style: TextStyle(fontFamily: 'Golos',fontWeight: FontWeight.w400,fontSize: 15.sp,color: Colors.white),),
               SizedBox(height:47.h,),

             ],
           ),
           Expanded(
               child: Image.asset('assets/images/promo1.png'))
         ],
       ),
     );
  }

}
