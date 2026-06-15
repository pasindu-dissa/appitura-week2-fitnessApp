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
            child: Image.asset('assets/images/splash_screen.png'),
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
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: (10)),
                  GestureDetector(
                    onTap: () {
                      context.go('/dashboard');
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryRed,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Stack(
                        children: [
                          const Center(
                            child: Text(
                              'Start Training',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 6,
                            top: 6,
                            bottom: 6,
                            child: Container(
                              width: 48,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.play_arrow_rounded,
                                color: AppTheme.primaryRed,
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
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
