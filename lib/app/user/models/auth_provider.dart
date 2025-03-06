import 'package:boardshare/app/user/models/user_org.dart';
import 'auth_storage.dart';

// final authProvider = Provider(Auth.new);

class AuthState {
  final String? token;
  final UserOrg? user;

  AuthState({this.token, this.user});

  bool get isAuthenticated => token != null;
}

class Auth {
  // Auth(this.ref);
  //
  // final Ref ref;

  Future<AuthState> loadAuthState() async {
    final token = await AuthStorage.getToken();
    final userInfo = await AuthStorage.getUserInfo();

    if (token != null && userInfo != null) {
      return AuthState(
        token: token,
        user: UserOrg.fromJson(userInfo),
      );
    } else {
      return AuthState();
    }
  }

  Future<AuthState> saveAuthData(String token, UserOrg userOrg) async {
    await AuthStorage.saveToken(token);
    await AuthStorage.saveUserInfo(userOrg.toJson());

    return AuthState(
      token: token,
      user: userOrg,
    );
  }

  Future<void> clearData() async {
    await AuthStorage.clear();
  }
}
