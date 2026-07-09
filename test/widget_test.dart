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

  testWidgets('Coach can open mock student details', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const LessonTrackApp());

    await tester.tap(find.text('Continue as Coach'));
    await tester.pumpAndSettle();

    expect(find.text('Total students'), findsOneWidget);
    expect(find.text('Lessons today'), findsOneWidget);
    expect(find.text('Pending confirmations'), findsOneWidget);
    expect(find.text('Renewal requests'), findsOneWidget);

    await tester.tap(find.text('View students'));
    await tester.pumpAndSettle();

    expect(find.text('Aylin Demir'), findsOneWidget);
    expect(find.text('Piano - 2 lessons left'), findsOneWidget);

    await tester.tap(find.text('Aylin Demir'));
    await tester.pumpAndSettle();

    expect(find.text('Branch: Piano'), findsOneWidget);
    expect(find.text('Total lesson count'), findsOneWidget);
    expect(find.text('Counted lessons'), findsOneWidget);
    expect(find.text('Remaining lessons'), findsOneWidget);
    expect(find.text('Upcoming lessons'), findsOneWidget);
    expect(find.text('Lesson history'), findsOneWidget);
  });
}
