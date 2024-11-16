import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.2, // Adjust height as needed
      child: Stack(
        children: [
          // Background image with fallback color
          Container(
            height: preferredSize.height,
            decoration: BoxDecoration(
              // color: Colors.orange, // Fallback background color
              image: const DecorationImage(
                image: AssetImage('assets/images/Home_background[1].png'), // Corrected image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // Semi-transparent overlay with search bar at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              decoration: const BoxDecoration(
              image: DecorationImage(
              
                image: AssetImage('assets/images/Home_background[1].png'), // Corrected image path
                fit: BoxFit.cover,
              )),// Semi-transparent overlay
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Search Bar
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Temples...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Space below search bar
                ],
              ),
            ),
          ),
          
          // Leading location icon and text
          Positioned(
            top: 50,
            left: 10,
            child: Row(
              children: const [
                Icon(Icons.location_on, color: Colors.white),
                SizedBox(width: 5),
                Text(
                  "Location",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          
          // Profile icon at the top right
          Positioned(
            top: 40,
            right: 10,
            child: CircleAvatar(
              radius: Get.width * 0.045,
              backgroundImage: const AssetImage('assets/images/logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
