import 'package:flutter/material.dart';

class TempleCardList extends StatelessWidget {
  const TempleCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const TempleDetailsCard(
          imageUrl: 'assets/images/pagoda-bagan.jpg',
          templeName: "Ganapathy Homam",
          templeLocation: "Nchumana Devi Temple",
          additionalInfo: "Special Event",
          secondLocation: "6:00 AM - 8:30 PM",
          secondTemple: "Hanuman",
        );
      },
    );
  }
}

class TempleDetailsCard extends StatelessWidget {
  final String imageUrl;
  final String templeName;
  final String templeLocation;
  final String additionalInfo;
  final String secondTemple;
  final String secondLocation;

  const TempleDetailsCard({
    Key? key,
    required this.imageUrl,
    required this.templeName,
    required this.templeLocation,
    required this.additionalInfo,
    required this.secondTemple,
    required this.secondLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 269,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            // Image Section
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Image.asset(
                imageUrl,
                height: 193,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            // Details Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.temple_buddhist_sharp, size: 16, color: Colors.orange),
                            const SizedBox(width: 4),
                            Text(
                              templeName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.location_on, size: 18, color: Colors.red),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                templeLocation,
                                style: TextStyle(color: Colors.grey[700], fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Divider
                  Container(
                    height: 60,
                    width: 1,
                    color: Colors.grey[500],
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  // Second Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/7065334_god_swastik_hindu_diwali_india_icon 1.png",
                              fit: BoxFit.cover,
                              height: 20,
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                secondTemple,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.alarm_rounded, size: 16, color: Colors.grey),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                secondLocation,
                                style: TextStyle(color: Colors.grey[700], fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
