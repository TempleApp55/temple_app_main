import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templeapp_main/app/component/appbar.dart';
import 'package:templeapp_main/app/component/divider.dart';
import 'package:templeapp_main/app/component/slider.dart';
import 'package:templeapp_main/app/component/temple_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   HomeView({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: CustomAppBar(), 
      body:
       SingleChildScrollView(
         child:  
         Column(
         children:[
          Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
           
          image:DecorationImage(image:  AssetImage("assets/images/Home_background[1].png"),fit: BoxFit.cover),
          
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),  // Adjust radius as needed
              bottomRight: Radius.circular(40),
            ),
          ),
          child: ClipRRect(
            child: Image.asset(
              "assets/images/temple.png",
              height: 80,
              width: double.infinity,
            ),
          ),
        
          ),SizedBox(height: 30),
          TextDivider(text: "UPCOMING FESTIVALS & EVENTS"),
          SizedBox(height: 20),
          SizedBox(
            height: 150,
            width: Get.width,
            child: SlidingCardList()),
            SizedBox(height: 20),
            TextDivider(text: "TEMPLES"),
            SizedBox(height: 20),
             SizedBox(
              height: Get.height,
              width: Get.width,
            child: TempleCardList())
          

         
        ],
      ),
    ));
  }
}



 

