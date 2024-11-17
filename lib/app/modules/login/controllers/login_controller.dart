import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:templeapp_main/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final count = 0.obs;

  final otpCode = ''.obs; // Observes the OTP value

  // Method to handle OTP submission
  void verifyOTP() {
    if (otpCode.value.length == 6) {
      // Simulate OTP verification
      Get.snackbar(
        "OTP Verified",
        "Your OTP code is ${otpCode.value}",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green.withOpacity(0.8),
        colorText: Colors.white,
      );
      Get.toNamed(Routes.HOME);
    } else {
      Get.snackbar(
        "Error",
        "Please enter a valid 6-digit OTP",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red.withOpacity(0.8),
        colorText: Colors.white,
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
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
