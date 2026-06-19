import 'package:flutter/material.dart';
import '../utils/responsive.dart';

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
    Responsive.init(context);

    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: Responsive.height(12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Center(
            child: Text(
              bannerText,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: Responsive.height(0.1),
            left: Responsive.width(8),
            right: Responsive.width(8),
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
