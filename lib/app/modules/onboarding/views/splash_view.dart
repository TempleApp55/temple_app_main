import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:templeapp_main/app/modules/onboarding/controllers/onboarding_controller.dart';

class SplashView extends GetView {
   SplashView({super.key});
  @override
  Widget build(BuildContext context) {
   final onboardingController = Get.put(OnboardingController()); // Create the controller instance
    onboardingController.navigateToOnboarding(); 
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/logo.png'),
            ), // Your splash image here
            const SizedBox(height: 200),
            const Padding(
              padding: EdgeInsets.all(15),
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            
            ),
          ],
        ),
      ),
    );
  }
}
