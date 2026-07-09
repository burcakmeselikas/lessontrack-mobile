import 'package:flutter/material.dart';

import '../../widgets/placeholder_feature_card.dart';

class LessonDetailScreen extends StatelessWidget {
  const LessonDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson Details')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          PlaceholderFeatureCard(
            title: 'Completion confirmation',
            description:
                'Later, coach and student/parent can confirm whether the lesson happened.',
            icon: Icons.check_circle,
          ),
          PlaceholderFeatureCard(
            title: 'Cancellation or no-show reason',
            description:
                'Cancelled and missed lessons will keep a reason for clear history.',
            icon: Icons.cancel,
          ),
          PlaceholderFeatureCard(
            title: 'Counted lesson decision',
            description:
                'A cancelled or missed lesson can be counted or not counted toward the package.',
            icon: Icons.calculate,
          ),
        ],
      ),
    );
  }
}
