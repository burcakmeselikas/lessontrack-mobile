class LessonPackage {
  const LessonPackage({
    required this.id,
    required this.studentId,
    required this.totalLessonCount,
    required this.countedLessonCount,
  });

  final String id;
  final String studentId;
  final int totalLessonCount;
  final int countedLessonCount;

  int get remainingLessonCount {
    final remaining = totalLessonCount - countedLessonCount;
    return remaining < 0 ? 0 : remaining;
  }
}
