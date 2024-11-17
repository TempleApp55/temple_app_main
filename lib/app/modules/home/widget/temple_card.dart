import 'package:flutter/material.dart';

class TempleListView extends StatelessWidget {
  const TempleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(8.0),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const TempleCard(
          imageUrl: 'assets/images/pagoda-bagan.jpg',
          mainEventName: "Ganapathy Homam",
          mainTempleName: "Nchumana Devi Temple",
          secondaryTempleName: "Hanuman",
          eventTimings: "6:00 AM - 8:30 PM",
        );
      },
    );
  }
}

class TempleCard extends StatelessWidget {
  final String imageUrl;
  final String mainEventName;
  final String mainTempleName;
  final String secondaryTempleName;
  final String eventTimings;

  const TempleCard({
    super.key,
    required this.imageUrl,
    required this.mainEventName,
    required this.mainTempleName,
    required this.secondaryTempleName,
    required this.eventTimings,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Image.asset(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 12,
              right: 12,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDetailRow(
                            icon: Icons.temple_hindu,
                            text: mainEventName,
                            iconColor: Colors.orange,
                          ),
                          const SizedBox(height: 15),
                          _buildDetailRow(
                            icon: Icons.location_on,
                            text: mainTempleName,
                            iconColor: Colors.red,
                            textStyle: TextStyle(
                                color: Colors.grey[700], fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      width: 1,
                      color: Colors.grey[300],
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDetailRow(
                            iconWidget: Image.asset(
                              "assets/images/7065334_god_swastik_hindu_diwali_india_icon 1.png",
                              height: 35,
                              fit: BoxFit.cover,
                            ),
                            text: secondaryTempleName,
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 10),
                          _buildDetailRow(
                            icon: Icons.access_time,
                            text: eventTimings,
                            iconColor: Colors.grey,
                            textStyle: TextStyle(
                                color: Colors.grey[700], fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow({
    IconData? icon,
    Widget? iconWidget,
    required String text,
    Color? iconColor,
    TextStyle? textStyle,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (icon != null)
          Icon(icon, size: 18, color: iconColor ?? Colors.black)
        else if (iconWidget != null)
          iconWidget,
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: textStyle ??
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
