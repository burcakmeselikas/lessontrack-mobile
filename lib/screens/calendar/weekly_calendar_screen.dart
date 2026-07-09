import 'package:flutter/material.dart';

import '../../widgets/placeholder_feature_card.dart';

class WeeklyCalendarScreen extends StatelessWidget {
  const WeeklyCalendarScreen({super.key});

  static const _weekdays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Weekly Calendar')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Week view placeholder',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Flexible lesson slots, recurring weekly lessons, and double lessons will be added here.',
          ),
          const SizedBox(height: 16),
          for (final day in _weekdays)
            PlaceholderFeatureCard(
              title: day,
              description: 'No lessons scheduled in this placeholder view.',
              icon: Icons.today,
            ),
        ],
      ),
    );
  }
}
