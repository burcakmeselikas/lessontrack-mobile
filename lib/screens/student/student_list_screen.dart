import 'package:flutter/material.dart';

import '../../app/app_routes.dart';
import '../../services/mock_lessontrack_data.dart';

class StudentListScreen extends StatelessWidget {
  const StudentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final students = MockLessonTrackData.students;

    return Scaffold(
      appBar: AppBar(title: const Text('Students')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: students.length,
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final student = students[index];
          final lessonPackage = MockLessonTrackData.packageForStudent(
            student.id,
          );

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              title: Text(student.name),
              subtitle: Text(
                '${student.branch} - ${lessonPackage.remainingLessonCount} lessons left',
              ),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.studentDetail,
                arguments: student.id,
              ),
            ),
          );
        },
      ),
    );
  }
}
