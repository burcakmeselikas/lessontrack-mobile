import 'package:flutter_test/flutter_test.dart';
import 'package:lessontrack_app/models/models.dart';

void main() {
  test('remaining lessons are total lessons minus counted lessons', () {
    const lessonPackage = LessonPackage(
      id: 'package-test',
      studentId: 'student-test',
      totalLessonCount: 4,
      countedLessonCount: 2,
    );

    expect(lessonPackage.remainingLessonCount, 2);
  });
}
