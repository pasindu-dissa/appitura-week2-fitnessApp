import 'package:fitness_app/widgets/starttrain_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/workout_round_card.dart';

class DailyWorkoutPlan extends StatelessWidget {
  const DailyWorkoutPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Top Header Image Section
            _buildHeaderImage(context),

            const SizedBox(height: 20),

            // 2. Scrollable Category Tags
            _buildCategoryTags(),

            const SizedBox(height: 30),

            // 3. Start Training Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: StarttrainButton(
                onTrain: () {
                  // start training
                },
              ),
            ),

            const SizedBox(height: 30),

            // 4. Workout Round Cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  WorkoutRoundCard(
                    roundTitle: 'Round 01',
                    exercises: [
                      ExerciseItem(
                        imageAsset:
                            'assets/images/stretch.png', 
                        title: 'Side Stretch Left',
                        repetitions: '3x',
                        onPlay: () {},
                      ),
                      ExerciseItem(
                        imageAsset:
                            'assets/images/stretch.png', 
                        title: 'Side Stretch Right',
                        repetitions: '3x',
                        onPlay: () {},
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Duplicate Round 01
                  WorkoutRoundCard(
                    roundTitle: 'Round 01',
                    exercises: [
                      ExerciseItem(
                        imageAsset: 'assets/images/stretch.png',
                        title: 'Side Stretch Left',
                        repetitions: '3x',
                        onPlay: () {},
                      ),
                    ],
                  ),

                  const SizedBox(height: 40), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- Widgets ---

  Widget _buildHeaderImage(BuildContext context) {
    return Stack(
      children: [
        // Background Cover Image
        Image.asset(
          'assets/images/workout.png',
          width: double.infinity,
          height: 350,
          fit: BoxFit.cover,
        ),

        // Back Button
        Positioned(
          top: MediaQuery.of(context).padding.top + 10,
          left: 10,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () {
              context.go('/dashboard');
            },
          ),
        ),

        // Title Text
        const Positioned(
          bottom: 16,
          left: 16,
          child: Text(
            'Full Body Workout',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryTags() {
    final tags = ['Cardio', 'Boxing', 'Zumba', 'Hiking'];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: tags.map((tag) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 7),
            decoration: BoxDecoration(
              color: const Color(0xFFE92222),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              tag,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
