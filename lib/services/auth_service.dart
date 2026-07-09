import '../models/models.dart';

abstract class AuthService {
  Future<AppUser?> getCurrentUser();

  Future<AppUser> signInAsRole(UserRole role);

  Future<void> signOut();
}
