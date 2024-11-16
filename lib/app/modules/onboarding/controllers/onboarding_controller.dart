import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:templeapp_main/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  //TODO: Implement OnboardingController
  final introKey = GlobalKey<IntroductionScreenState>();
  var currentPage = 0.obs; // Observable to track the current page index

  void navigateToOnboarding() {
    print("Starting timer to navigate to onboarding..."); // Debug statement
    Timer(const Duration(seconds: 2), () {
      print("Navigating to onboarding screen..."); // Debug statement
      Get.offNamed(Routes.ONBOARDING); // Navigate to onboarding screen
    });
  }
    void goToNextPage() {
      final pageViewController = introKey.currentState?.controller;
      if (pageViewController != null) {
        if (currentPage.value < 2) {
          // Check if the current page is less than the last page index
          pageViewController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
          currentPage.value++; // Increment the current page index
        } else {
          // If on the last page, navigate to the login page
          Get.toNamed(Routes.LOGIN);
        }
      }
    }

    final count = 0.obs;
    @override
    void onInit() {
      super.onInit();
      navigateToOnboarding;
    }

    @override
    void onReady() {
      super.onReady();
    }

    @override
    void onClose() {
      super.onClose();
    }

    void increment() => count.value++;
  }

