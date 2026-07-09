enum LessonStatus { scheduled, completed, cancelled, missed }

extension LessonStatusLabel on LessonStatus {
  String get label {
    return switch (this) {
      LessonStatus.scheduled => 'Scheduled',
      LessonStatus.completed => 'Completed',
      LessonStatus.cancelled => 'Cancelled',
      LessonStatus.missed => 'Missed',
    };
  }
}

class Lesson {
  const Lesson({
    required this.id,
    required this.coachId,
    required this.studentId,
    required this.startsAt,
    required this.duration,
    required this.status,
    required this.countsTowardPackage,
    this.repeatsWeekly = false,
    this.needsConfirmation = false,
    this.cancellationReason,
  });

  final String id;
  final String coachId;
  final String studentId;
  final DateTime startsAt;
  final Duration duration;
  final LessonStatus status;
  final bool countsTowardPackage;
  final bool repeatsWeekly;
  final bool needsConfirmation;
  final String? cancellationReason;
}
