import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class StartCard extends StatelessWidget {
  final String imagePath;
  final VoidCallback onStart;
  final bool isSecondaryStyle; // To toggle between dark red and light red buttons

  const StartCard({
    super.key,
    required this.imagePath,
    required this.onStart,
    this.isSecondaryStyle = false, // Default to dark red
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      // Clip behavior ensures the image stays within rounded corners
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),

          // Start Button positioned at the bottom
          Positioned(
            bottom: 8,
            left: 32,
            right: 32,
            child: GestureDetector(
              onTap: onStart,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  // Toggle color based on isSecondaryStyle 
                  color: isSecondaryStyle 
                      ? const Color(0xFFF06666) // light red color from right card
                      : AppTheme.primaryRed,   // Dark red from left card
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
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