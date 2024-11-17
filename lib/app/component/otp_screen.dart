import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:templeapp_main/app/modules/login/controllers/login_controller.dart';

class OTPView extends StatelessWidget {
  OTPView({Key? key}) : super(key: key);

  final LoginController loginController = Get.put(LoginController());

  // FocusNode to manage focus on the OTP input
  final FocusNode otpFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue),
      ),
    );

    // Request focus when the screen builds
    WidgetsBinding.instance.addPostFrameCallback((_) {
      otpFocusNode.requestFocus();
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Logo Image
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                  width: 140,
                ),
              ),
              const SizedBox(height: 30),
              // OTP Verification Title
              const Center(
                child: Text(
                  'OTP Verification',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Subheading
              Center(
                child: Text(
                  'Enter the OTP sent to +917994465581',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // OTP Input
              Center(
                child: Pinput(
                  length: 6,
                  focusNode: otpFocusNode,
                  defaultPinTheme: defaultPinTheme,
                  keyboardType: TextInputType.number,
                  onChanged: (value) => loginController.otpCode.value = value,
                  onCompleted: (value) => loginController.otpCode.value = value,
                ),
              ),
              const SizedBox(height: 50),
              // Verify Button
              ElevatedButton(
                onPressed: loginController.verifyOTP,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
