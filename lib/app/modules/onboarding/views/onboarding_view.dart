import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:templeapp_main/app/routes/app_pages.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            SizedBox(height: 130),
            Expanded(
              child: IntroductionScreen(
                key: controller.introKey, // Use the introKey from controller
                onChange: (index) => controller.currentPage.value =
                    index, // Update the current page index
                pages: [
                  PageViewModel(
                    title: "Book Poojas with a Few Taps",
                    body: "Offer your prayers, wherever you are, with devotion",
                    image: Image.asset(
                      "assets/images/pooja 1.png",
                      height: 300,
                      width: 300,
                      fit: BoxFit.contain,
                    ),
                    decoration: const PageDecoration(
                      titleTextStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                      bodyTextStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                      ),
                      imagePadding: EdgeInsets.all(20),
                      contentMargin: EdgeInsets.only(top: 40),
                    ),
                  ),
                  PageViewModel(
                    title: "Stay Updated with Your Favorite Temples",
                    body:
                        "Get real-time updates and notifications about temple events and rituals",
                    image: Image.asset(
                      "assets/images/pooja 2.png",
                      height: 300,
                      width: 300,
                      fit: BoxFit.contain,
                    ),
                    decoration: const PageDecoration(
                      titleTextStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                      bodyTextStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                      ),
                      imagePadding: EdgeInsets.all(20),
                      contentMargin: EdgeInsets.only(top: 40),
                    ),
                  ),
                  PageViewModel(
                    title: "Worship Anytime, Anywhere",
                    body: "Join rituals anywhere and transcend boundaries",
                    image: Image.asset(
                      "assets/images/pooja 3.png",
                      height: 300,
                      width: 300,
                      fit: BoxFit.contain,
                    ),
                    decoration: const PageDecoration(
                      titleTextStyle: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                      bodyTextStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                      ),
                      imagePadding: EdgeInsets.all(20),
                      contentMargin: EdgeInsets.only(top: 40),
                    ),
                  ),
                ],
                dotsDecorator: DotsDecorator(
                  size: const Size(25, 4),
                  activeSize: const Size(30, 4),
                  color: Colors.grey,
                  activeColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  spacing: const EdgeInsets.symmetric(horizontal: 3),
                ),
                showBackButton: false,
                showNextButton: false,
                showDoneButton: false, // We'll create our own button
                onDone: () => Get.toNamed(Routes.LOGIN),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: controller
                  .goToNextPage, // Calls the controller function to go to the next page or login
              child: Obx(() => Text(
                    controller.currentPage.value < 2
                        ? "Next"
                        : "Done", // Change button text based on page index
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            const SizedBox(height: 10), // Space between dots and button
          ],
        ),
      ),
    );
  }
}
