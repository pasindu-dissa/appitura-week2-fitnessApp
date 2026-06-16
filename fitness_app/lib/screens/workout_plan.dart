import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WorkoutPlan extends StatelessWidget {
  const WorkoutPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Plan'), 
        centerTitle: true, 
        leading: BackButton(
        onPressed: () => context.push('/dashboard'),
      ),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Daily Workout Plan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
