import 'package:fitness_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class StarttrainButton extends StatelessWidget {
  final VoidCallback onTrain;

  const StarttrainButton({required this.onTrain, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTrain,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Main text pill
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: AppTheme.primaryRed,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  'Start Training',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          ),

          // Connecting line
          Container(width: 16, height: 6, color: AppTheme.primaryRed),

          // Outer red circle with inner white play button
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: AppTheme.primaryRed,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow_rounded,
                  color: AppTheme.primaryRed,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
