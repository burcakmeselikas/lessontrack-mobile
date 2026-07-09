import 'package:flutter/material.dart';

import 'app_routes.dart';
import 'app_theme.dart';

class LessonTrackApp extends StatelessWidget {
  const LessonTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LessonTrack Mobile',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.roleSelection,
      routes: AppRoutes.routes,
    );
  }
}
