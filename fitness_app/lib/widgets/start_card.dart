import 'package:flutter/material.dart';
import '../themes/app_theme.dart';
import '../utils/responsive.dart';

class StartCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onStart;
  final bool isSecondaryStyle;

  const StartCard({
    super.key,
    required this.imagePath,
    required this.onStart,
    this.isSecondaryStyle = false,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: Responsive.width(43),
      height: Responsive.height(23),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: Responsive.height(1),
            left: Responsive.width(7),
            right: Responsive.width(7),
            child: GestureDetector(
              onTap: onStart,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: Responsive.height(0.7)),
                decoration: BoxDecoration(
                  color: isSecondaryStyle
                      ? const Color(0xFFF06666)
                      : AppTheme.primaryRed,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Start',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}