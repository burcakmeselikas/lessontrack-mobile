import 'package:flutter/material.dart';

import '../../app/app_routes.dart';
import '../../models/models.dart';
import '../../services/mock_lessontrack_data.dart';
import '../../widgets/placeholder_feature_card.dart';

class StudentDetailScreen extends StatelessWidget {
  const StudentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final studentId = ModalRoute.of(context)?.settings.arguments as String?;
    final student =
        MockLessonTrackData.findStudentById(studentId ?? '') ??
        MockLessonTrackData.students.first;
    final lessonPackage = MockLessonTrackData.packageForStudent(student.id);
    final upcomingLessons = MockLessonTrackData.upcomingLessonsForStudent(
      student.id,
    );

    return Scaffold(
      appBar: AppBar(title: Text(student.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            student.name,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 4),
          Text('Branch: ${student.branch}'),
          const SizedBox(height: 16),
          _PackageSummary(lessonPackage: lessonPackage),
          const SizedBox(height: 16),
          Text(
            'Upcoming lessons',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 8),
          if (upcomingLessons.isEmpty)
            const PlaceholderFeatureCard(
              title: 'No upcoming lessons',
              description: 'Scheduled lessons will appear here.',
              icon: Icons.event_busy,
            )
          else
            for (final lesson in upcomingLessons)
              PlaceholderFeatureCard(
                title: _formatLessonTime(lesson),
                description: _formatLessonDescription(lesson),
                icon: Icons.event_available,
              ),
          PlaceholderFeatureCard(
            title: 'Lesson history',
            description:
                'Open the history view for completed, cancelled, and missed lessons.',
            icon: Icons.history,
            actionLabel: 'Open history',
            onTap: () => Navigator.pushNamed(
              context,
              AppRoutes.lessonHistory,
              arguments: student.id,
            ),
          ),
        ],
      ),
    );
  }

  static String _formatLessonTime(Lesson lesson) {
    final date = lesson.startsAt;
    final month = _monthNames[date.month - 1];
    final day = date.day.toString().padLeft(2, '0');
    final hour = date.hour.toString().padLeft(2, '0');
    final minute = date.minute.toString().padLeft(2, '0');

    return '$month $day at $hour:$minute';
  }

  static String _formatLessonDescription(Lesson lesson) {
    final durationMinutes = lesson.duration.inMinutes;
    final recurringText = lesson.repeatsWeekly ? ' - repeats weekly' : '';

    return '$durationMinutes minutes$recurringText';
  }

  static const List<String> _monthNames = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
}

class _PackageSummary extends StatelessWidget {
  const _PackageSummary({required this.lessonPackage});

  final LessonPackage lessonPackage;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lesson package',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 12),
            _DetailRow(
              label: 'Total lesson count',
              value: lessonPackage.totalLessonCount.toString(),
            ),
            _DetailRow(
              label: 'Counted lessons',
              value: lessonPackage.countedLessonCount.toString(),
            ),
            _DetailRow(
              label: 'Remaining lessons',
              value: lessonPackage.remainingLessonCount.toString(),
            ),
            const SizedBox(height: 8),
            Text(
              'Remaining lessons = total lessons - counted lessons',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Expanded(child: Text(label)),
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
