import 'package:flutter/material.dart';

import '../../app/app_routes.dart';
import '../../widgets/placeholder_feature_card.dart';

class StudentDashboardScreen extends StatelessWidget {
  const StudentDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student/Parent Home')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const PlaceholderFeatureCard(
            title: 'Student/parent overview',
            description:
                'This screen will show the next lesson, remaining lesson count, and recent history.',
            icon: Icons.person,
          ),
          PlaceholderFeatureCard(
            title: 'Weekly calendar',
            description:
                'See scheduled lessons and recurring lesson plans in a weekly view.',
            icon: Icons.calendar_today,
            actionLabel: 'Open calendar',
            onTap: () => Navigator.pushNamed(context, AppRoutes.weeklyCalendar),
          ),
          PlaceholderFeatureCard(
            title: 'Lesson history',
            description:
                'Review completed, cancelled, missed, counted, and not-counted lessons.',
            icon: Icons.history,
            actionLabel: 'Open history',
            onTap: () => Navigator.pushNamed(context, AppRoutes.lessonHistory),
          ),
        ],
      ),
    );
  }
}
