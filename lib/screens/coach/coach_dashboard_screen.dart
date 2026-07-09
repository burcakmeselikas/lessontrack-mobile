import 'package:flutter/material.dart';

import '../../app/app_routes.dart';
import '../../services/mock_lessontrack_data.dart';
import '../../widgets/placeholder_feature_card.dart';
import '../../widgets/summary_card.dart';

class CoachDashboardScreen extends StatelessWidget {
  const CoachDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Coach Home')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          GridView.extent(
            maxCrossAxisExtent: 220,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1.6,
            children: [
              SummaryCard(
                title: 'Total students',
                value: MockLessonTrackData.totalStudents.toString(),
                icon: Icons.groups,
              ),
              SummaryCard(
                title: 'Lessons today',
                value: MockLessonTrackData.lessonsToday.toString(),
                icon: Icons.today,
              ),
              SummaryCard(
                title: 'Pending confirmations',
                value: MockLessonTrackData.pendingConfirmations.toString(),
                icon: Icons.fact_check,
              ),
              SummaryCard(
                title: 'Renewal requests',
                value: MockLessonTrackData.renewalRequests.toString(),
                icon: Icons.autorenew,
              ),
            ],
          ),
          const SizedBox(height: 12),
          PlaceholderFeatureCard(
            title: 'Students',
            description:
                'Open the mock student list and view lesson package details.',
            icon: Icons.people,
            actionLabel: 'View students',
            onTap: () => Navigator.pushNamed(context, AppRoutes.studentList),
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
