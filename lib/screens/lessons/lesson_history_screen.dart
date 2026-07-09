import 'package:flutter/material.dart';

import '../../widgets/placeholder_feature_card.dart';

class LessonHistoryScreen extends StatelessWidget {
  const LessonHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson History')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          PlaceholderFeatureCard(
            title: 'History timeline',
            description:
                'Students and parents will see completed, cancelled, and missed lessons here.',
            icon: Icons.history,
          ),
          PlaceholderFeatureCard(
            title: 'Remaining lesson count',
            description:
                'Remaining lessons will be calculated from lessons that count toward the package.',
            icon: Icons.format_list_numbered,
          ),
        ],
      ),
    );
  }
}
