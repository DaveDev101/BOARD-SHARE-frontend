import '../models/signin_result.dart';

abstract class UserAuthentication {
  Future<(int, String)> signUp(
      {required String email,
      required String password,
      required String displayName});
  Future<String> verifySignUpCode(
      {required int userId, required int orgId, required String code});
  Future<(String, SigninResult)> signIn(
      {required String email, required String password});
  Future<(String, SigninResult)> verifyAndSignIn(
      {required String email, required String password, required String code});
  Future<void> signOut();
}
