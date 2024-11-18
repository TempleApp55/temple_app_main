import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templeapp_main/app/component/buildDetailRow.dart';
import 'package:templeapp_main/app/modules/temple_details/widget/suggetion_slider.dart';

import '../controllers/temple_details_controller.dart';

class TempleDetailsView extends GetView<TempleDetailsController> {
  const TempleDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 380,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/crp_728x437_518_61556 1.png",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  // Positioned text at the bottom
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hanuman Kovil Ernakulam",
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        buildDetailRow(
                          icon: Icons.alarm,
                          text: "6:00 AM - 8:30 PM",
                          iconColor: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Suggested"),
            SizedBox(height: 20),

            SizedBox(height: 150, width: Get.width,child: SlidingCardWithButton())
          ],
        ),
      ),
    );
  }
}
