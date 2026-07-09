import 'package:flutter/material.dart';

import '../../app/app_routes.dart';
import '../../widgets/placeholder_feature_card.dart';

class CoachDashboardScreen extends StatelessWidget {
  const CoachDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Coach Home')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const PlaceholderFeatureCard(
            title: 'Coach overview',
            description:
                'Today this is a placeholder. Later it will show upcoming lessons, confirmations, and package counts.',
            icon: Icons.dashboard,
          ),
          PlaceholderFeatureCard(
            title: 'Weekly calendar',
            description:
                'Plan flexible lessons, recurring weekly lessons, and back-to-back double lessons.',
            icon: Icons.calendar_today,
            actionLabel: 'Open calendar',
            onTap: () => Navigator.pushNamed(context, AppRoutes.weeklyCalendar),
          ),
          PlaceholderFeatureCard(
            title: 'Lesson details',
            description:
                'Track completion, cancellations, missed lessons, and whether a lesson should count.',
            icon: Icons.event,
            actionLabel: 'View placeholder',
            onTap: () => Navigator.pushNamed(context, AppRoutes.lessonDetail),
          ),
          PlaceholderFeatureCard(
            title: 'Settings',
            description:
                'Keep account, role, and future payment settings separate from the MVP lesson flow.',
            icon: Icons.settings,
            actionLabel: 'Open settings',
            onTap: () => Navigator.pushNamed(context, AppRoutes.settings),
          ),
        ],
      ),
    );
  }
}
