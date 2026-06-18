import 'package:fitness_app/widgets/explorenow_card.dart';
import 'package:fitness_app/widgets/recommend_card.dart';
import 'package:fitness_app/widgets/start_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  String name = 'Jane';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text('Hello $name, \nLet’s start exercising'),
        automaticallyImplyLeading: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 36,
              children: [
                StartCard(
                  imagePath: 'assets/images/start_card1.png',
                  onStart: () {
                    context.go('/workout');
                  },
                ),
                StartCard(
                  imagePath: 'assets/images/start_card2.png',
                  onStart: () {
                    context.go('/workout');
                  },
                  isSecondaryStyle: true,
                ),
              ],
            ),

            SizedBox(height: 36),

            Text(
              'Recommended for you',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),

            SizedBox(height: 17,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 12,
                children: [
                  RecommendCard(
                    imagePath: 'assets/images/recommend_card1.png',
                    onTap: () {
                      context.go('/workout');
                    },
                  ),
                  RecommendCard(
                    imagePath: 'assets/images/recommend_card2.png',
                    onTap: () {
                      context.go('/workout');
                    },
                  ),
                  RecommendCard(
                    imagePath: 'assets/images/recommend_card3.png',
                    onTap: () {
                      context.go('/workout');
                    },
                  ),
                  RecommendCard(
                    imagePath: 'assets/images/recommend_card3.png',
                    onTap: () {
                      context.go('/workout');
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 55),

            Column(
              spacing: 36,
              children: [
                ExplorenowCard(
                  imagePath: 'assets/images/explorenow_card1.png',
                  bannerText: 'Find me a personal Trainer',
                  onExplore: () {
                    context.go('/workout');
                  },
                ),
                ExplorenowCard(
                  imagePath: 'assets/images/explorenow_card2.png',
                  bannerText: 'Find me group classes',
                  onExplore: () {
                    context.go('/workout');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
