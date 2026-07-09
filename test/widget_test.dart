import 'package:flutter_test/flutter_test.dart';
import 'package:lessontrack_app/app/lessontrack_app.dart';

void main() {
  testWidgets('LessonTrack app shell loads role selection', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const LessonTrackApp());

    expect(find.text('LessonTrack Mobile'), findsOneWidget);
    expect(find.text('Continue as Coach'), findsOneWidget);
    expect(find.text('Continue as Student/Parent'), findsOneWidget);
  });
}
