import 'package:flutter/material.dart';

class ExplorenowCard extends StatelessWidget {
  final String imagePath;
  final String bannerText;
  final VoidCallback onExplore;

  const ExplorenowCard({
    super.key,
    required this.imagePath,
    required this.bannerText,
    required this.onExplore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      // Clip behavior ensures the image stays within rounded corners
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(imagePath, fit: BoxFit.cover),

          // Banner Text
          Center(
            child: Text(
              bannerText,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),

          // Explore Button
          Positioned(
            bottom: 4,
            left: 32,
            right: 32,
            child: TextButton(
              onPressed: onExplore,
              child: Text(
                'Explore now',
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
