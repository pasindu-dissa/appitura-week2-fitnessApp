import 'package:fitness_app/widgets/explorenow_card.dart';
import 'package:fitness_app/widgets/recommend_card.dart';
import 'package:fitness_app/widgets/start_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/responsive.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  String name = 'Jane';

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Responsive.height(10),
        title: Text(
          'Hello $name, \nLet’s start exercising',
          style: TextStyle(fontSize: Responsive.width(5)),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: Responsive.height(2.5),
            horizontal: Responsive.width(4),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: Responsive.width(5),
                runSpacing: Responsive.height(2),
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
              SizedBox(height: Responsive.height(5.5)),
              Text(
                'Recommended for you',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: Responsive.height(2)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecommendCard(
                      imagePath: 'assets/images/recommend_card1.png',
                      onTap: () {
                        context.go('/workout');
                      },
                    ),
                    SizedBox(width: Responsive.width(3)),
                    RecommendCard(
                      imagePath: 'assets/images/recommend_card2.png',
                      onTap: () {
                        context.go('/workout');
                      },
                    ),
                    SizedBox(width: Responsive.width(3)),
                    RecommendCard(
                      imagePath: 'assets/images/recommend_card3.png',
                      onTap: () {
                        context.go('/workout');
                      },
                    ),
                    SizedBox(width: Responsive.width(3)),
                    RecommendCard(
                      imagePath: 'assets/images/recommend_card3.png',
                      onTap: () {
                        context.go('/workout');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: Responsive.height(5.5)),
              Column(
                children: [
                  ExplorenowCard(
                    imagePath: 'assets/images/explorenow_card1.png',
                    bannerText: 'Find me a personal Trainer',
                    onExplore: () {
                      context.go('/workout');
                    },
                  ),
                  SizedBox(height: Responsive.height(4)),
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
      ),
    );
  }
}
