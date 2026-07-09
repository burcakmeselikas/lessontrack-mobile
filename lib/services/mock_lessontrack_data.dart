import '../models/models.dart';

class MockLessonTrackData {
  const MockLessonTrackData._();

  static final DateTime _now = DateTime.now();

  static final List<Student> students = [
    const Student(id: 'student-1', name: 'Aylin Demir', branch: 'Piano'),
    const Student(id: 'student-2', name: 'Deniz Kaya', branch: 'Tennis'),
    const Student(id: 'student-3', name: 'Zeynep Arslan', branch: 'Math'),
  ];

  static const List<LessonPackage> packages = [
    LessonPackage(
      id: 'package-1',
      studentId: 'student-1',
      totalLessonCount: 4,
      countedLessonCount: 2,
    ),
    LessonPackage(
      id: 'package-2',
      studentId: 'student-2',
      totalLessonCount: 6,
      countedLessonCount: 5,
    ),
    LessonPackage(
      id: 'package-3',
      studentId: 'student-3',
      totalLessonCount: 8,
      countedLessonCount: 8,
    ),
  ];

  static final List<Lesson> lessons = [
    Lesson(
      id: 'lesson-1',
      coachId: 'coach-1',
      studentId: 'student-1',
      startsAt: _todayAt(17, 0),
      duration: const Duration(minutes: 60),
      status: LessonStatus.scheduled,
      countsTowardPackage: false,
    ),
    Lesson(
      id: 'lesson-2',
      coachId: 'coach-1',
      studentId: 'student-2',
      startsAt: _todayAt(18, 0),
      duration: const Duration(minutes: 60),
      status: LessonStatus.scheduled,
      countsTowardPackage: false,
    ),
    Lesson(
      id: 'lesson-3',
      coachId: 'coach-1',
      studentId: 'student-1',
      startsAt: _daysFromNow(3, 17, 0),
      duration: const Duration(minutes: 120),
      status: LessonStatus.scheduled,
      countsTowardPackage: false,
      repeatsWeekly: true,
    ),
    Lesson(
      id: 'lesson-4',
      coachId: 'coach-1',
      studentId: 'student-1',
      startsAt: _daysAgo(2, 17, 0),
      duration: const Duration(minutes: 60),
      status: LessonStatus.completed,
      countsTowardPackage: true,
      needsConfirmation: true,
    ),
    Lesson(
      id: 'lesson-5',
      coachId: 'coach-1',
      studentId: 'student-1',
      startsAt: _daysAgo(9, 17, 0),
      duration: const Duration(minutes: 60),
      status: LessonStatus.completed,
      countsTowardPackage: true,
    ),
    Lesson(
      id: 'lesson-6',
      coachId: 'coach-1',
      studentId: 'student-3',
      startsAt: _daysAgo(1, 16, 0),
      duration: const Duration(minutes: 60),
      status: LessonStatus.missed,
      countsTowardPackage: true,
      cancellationReason: 'No-show',
    ),
  ];

  static int get totalStudents => students.length;

  static int get lessonsToday {
    return lessons.where((lesson) {
      return lesson.status == LessonStatus.scheduled &&
          _isSameDate(lesson.startsAt, _now);
    }).length;
  }

  static int get pendingConfirmations {
    return lessons.where((lesson) => lesson.needsConfirmation).length;
  }

  static int get renewalRequests {
    return packages.where((lessonPackage) {
      return lessonPackage.remainingLessonCount <= 1;
    }).length;
  }

  static Student? findStudentById(String id) {
    for (final student in students) {
      if (student.id == id) {
        return student;
      }
    }

    return null;
  }

  static LessonPackage packageForStudent(String studentId) {
    return packages.firstWhere(
      (lessonPackage) => lessonPackage.studentId == studentId,
    );
  }

  static List<Lesson> upcomingLessonsForStudent(String studentId) {
    return lessons.where((lesson) {
      return lesson.studentId == studentId &&
          lesson.status == LessonStatus.scheduled;
    }).toList();
  }

  static DateTime _todayAt(int hour, int minute) {
    return DateTime(_now.year, _now.month, _now.day, hour, minute);
  }

  static DateTime _daysFromNow(int days, int hour, int minute) {
    return DateTime(_now.year, _now.month, _now.day + days, hour, minute);
  }

  static DateTime _daysAgo(int days, int hour, int minute) {
    return DateTime(_now.year, _now.month, _now.day - days, hour, minute);
  }

  static bool _isSameDate(DateTime first, DateTime second) {
    return first.year == second.year &&
        first.month == second.month &&
        first.day == second.day;
  }
}
