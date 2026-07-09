# LessonTrack Mobile

LessonTrack Mobile is a private lesson tracking app for coaches and students or parents.

This repo currently contains the beginner-friendly Flutter architecture only. The full app is not implemented yet.

## Current Stage

- Clean Flutter folder structure
- App theme in one place
- Named route structure
- Placeholder screens for the main MVP areas
- Basic model classes for users, lessons, packages, and roles
- Service contracts for future auth and lesson data
- MVP roadmap in [`docs/mvp_roadmap.md`](docs/mvp_roadmap.md)

## Run Locally

```bash
flutter pub get
flutter run -d chrome
```

## Project Structure

```text
lib/
  app/
    app_routes.dart
    app_theme.dart
    lessontrack_app.dart
  models/
    app_user.dart
    lesson.dart
    lesson_package.dart
    models.dart
    user_role.dart
  screens/
    auth/
    calendar/
    coach/
    lessons/
    settings/
    student/
  services/
    auth_service.dart
    lesson_service.dart
  widgets/
    placeholder_feature_card.dart
  main.dart
```

## MVP Scope

The MVP will support:

- Coach and student/parent roles
- Custom lesson package counts
- Weekly calendar view
- Flexible lesson scheduling
- Recurring weekly lessons
- Back-to-back double lessons
- Lesson completion confirmation
- Cancelled or missed lessons counted or not counted
- Cancellation and no-show reasons
- Remaining lesson count from counted lessons
- Lesson history visible to student/parent

No payment system is included in the MVP. The structure leaves room to add online payments later.

## Repository

GitHub: https://github.com/burcakmeselikas/lessontrack-mobile
