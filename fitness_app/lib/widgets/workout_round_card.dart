import 'package:flutter/material.dart';

// A model class to hold the data for each exercise row
class ExerciseItem {
  final String imageAsset;
  final String title;
  final String repetitions;
  final VoidCallback? onPlay;

  ExerciseItem({
    required this.imageAsset,
    required this.title,
    required this.repetitions,
    this.onPlay,
  });
}

class WorkoutRoundCard extends StatelessWidget {
  final String roundTitle;
  final List<ExerciseItem> exercises;

  const WorkoutRoundCard({
    super.key,
    required this.roundTitle,
    required this.exercises,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 15, 50, 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Round Title
          Text(
            roundTitle,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 21),
          
          // List of Exercise Rows
          ...exercises.asMap().entries.map((entry) {
            final index = entry.key;
            final exercise = entry.value;
            
            return Padding(
              padding: EdgeInsets.only(
                // spacing below all items except the last one
                bottom: index == exercises.length - 1 ? 0 : 20,
              ),
              child: _buildExerciseRow(exercise),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildExerciseRow(ExerciseItem exercise) {
    return Row(
      children: [
        // Image Thumbnail
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            exercise.imageAsset,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        
        // Title and Reps
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exercise.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                exercise.repetitions,
                style: const TextStyle(
                  color: Color(0xFF757575),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        
        // Play Button
        GestureDetector(
          onTap: exercise.onPlay,
          child: Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              color: Color(0xFFE92222),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 14,
            ),
          ),
        ),
      ],
    );
  }
}