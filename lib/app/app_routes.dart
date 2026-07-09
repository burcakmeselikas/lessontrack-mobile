import 'package:flutter/material.dart';

import '../screens/auth/role_selection_screen.dart';
import '../screens/calendar/weekly_calendar_screen.dart';
import '../screens/coach/coach_dashboard_screen.dart';
import '../screens/lessons/lesson_detail_screen.dart';
import '../screens/lessons/lesson_history_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/student/student_dashboard_screen.dart';

class AppRoutes {
  const AppRoutes._();

  static const roleSelection = '/';
  static const coachDashboard = '/coach';
  static const studentDashboard = '/student';
  static const weeklyCalendar = '/calendar';
  static const lessonDetail = '/lesson-detail';
  static const lessonHistory = '/lesson-history';
  static const settings = '/settings';

  static Map<String, WidgetBuilder> get routes {
    return {
      roleSelection: (context) => const RoleSelectionScreen(),
      coachDashboard: (context) => const CoachDashboardScreen(),
      studentDashboard: (context) => const StudentDashboardScreen(),
      weeklyCalendar: (context) => const WeeklyCalendarScreen(),
      lessonDetail: (context) => const LessonDetailScreen(),
      lessonHistory: (context) => const LessonHistoryScreen(),
      settings: (context) => const SettingsScreen(),
    };
  }
}
