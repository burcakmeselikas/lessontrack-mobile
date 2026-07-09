# LessonTrack Mobile MVP Roadmap

This roadmap keeps the first version focused on lesson tracking. Payments, advanced reporting, and automation can come later.

## Phase 1: App Foundation

- Keep the clean folder structure stable.
- Confirm the app theme, route names, and placeholder screens.
- Decide the first data storage option before adding real features.

## Phase 2: Roles and Basic Access

- Add coach and student/parent role selection.
- Replace placeholder role selection with real authentication when ready.
- Keep role-specific screens separate so each user sees only relevant actions.

## Phase 3: Lesson and Package Data

- Create real lesson package records with custom lesson counts.
- Store lesson status: scheduled, completed, cancelled, or missed.
- Store whether each lesson counts toward the package.
- Calculate remaining lessons from counted lessons.

## Phase 4: Calendar and Scheduling

- Build the weekly calendar view.
- Add flexible lesson creation.
- Add recurring weekly lesson support.
- Allow back-to-back double lessons.

## Phase 5: Confirmation and Cancellation

- Add lesson completion confirmation.
- Add cancelled and missed lesson flows.
- Require a cancellation or no-show reason.
- Let the coach decide whether cancelled or missed lessons count.

## Phase 6: Student and Parent History

- Show lesson history to students and parents.
- Include lesson status, date, reason, and counted/not-counted result.
- Show remaining lesson count clearly.

## Phase 7: MVP Polish

- Add empty, loading, and error states.
- Add focused tests for lesson counting rules.
- Review mobile layout on Chrome and device targets.
- Prepare the first private test release.

## Future After MVP

- Online payments
- Payment history
- Notifications
- Calendar sync
- More detailed coach reporting
