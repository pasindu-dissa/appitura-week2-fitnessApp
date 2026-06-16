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
          ],
        ),
      ),
    );
  }
}
