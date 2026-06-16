import 'package:fitness_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/splash_screen.png',
              fit: BoxFit.cover,
            ),
          ),

          // Gradient Overlay for text readability
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),

          // Foreground Content
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: (12), vertical: (49)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Join the Fitness\nClub',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.normal,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: (12)),
                  GestureDetector(
                    onTap: () {
                      context.go('/dashboard');
                    },
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
                        Container(
                          width: 16,
                          height: 6,
                          color: AppTheme.primaryRed,
                        ),

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
                  ),
                  SizedBox(height: (2)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
