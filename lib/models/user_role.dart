enum UserRole { coach, studentParent }

extension UserRoleLabel on UserRole {
  String get label {
    return switch (this) {
      UserRole.coach => 'Coach',
      UserRole.studentParent => 'Student/Parent',
    };
  }
}
