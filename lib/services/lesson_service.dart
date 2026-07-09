import '../models/models.dart';

abstract class LessonService {
  Stream<List<Lesson>> watchLessonsForUser(String userId);

  Future<void> saveLesson(Lesson lesson);

  Future<void> confirmLessonCompleted(String lessonId);

  Future<void> cancelLesson({
    required String lessonId,
    required String reason,
    required bool countsTowardPackage,
  });
}
