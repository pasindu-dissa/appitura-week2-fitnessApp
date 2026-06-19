import 'package:flutter/material.dart';
import '../utils/responsive.dart';

class RecommendCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const RecommendCard({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Responsive.height(11),
        width: Responsive.width(28.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
