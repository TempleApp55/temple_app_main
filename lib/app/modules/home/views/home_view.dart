import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templeapp_main/app/component/appbar.dart';
import 'package:templeapp_main/app/component/divider.dart';
import 'package:templeapp_main/app/modules/home/widget/slider.dart';
import 'package:templeapp_main/app/modules/home/widget/temple_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Home_background[1].png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                ),
                Positioned(
                  bottom:
                      -50, // Adjusted to make the image extend outside the container
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Image.asset(
                      "assets/images/temple.png",
                      height: 200, // Adjust size for a balanced look
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
                height: 100), // Adjusted to account for the overlapping image
            const TextDivider(text: "UPCOMING FESTIVALS & EVENTS"),
            const SizedBox(height: 20),
            SizedBox(
                height: 150, width: Get.width, child: const SlidingCardList()),
            const SizedBox(height: 20),
            const TextDivider(text: "TEMPLES"),
            const SizedBox(height: 20),
            const TempleListView(),
          ],
        ),
      ),
    );
  }
}
