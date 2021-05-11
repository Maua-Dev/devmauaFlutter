import 'package:devmaua/modules/login/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../interfaces/login_repository_interface.dart';

class LoginRepository implements ILoginRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  UserModel? getUser() {
    var user = _auth.currentUser;
    if (user != null) {
      return UserModel(email: user.email!, displayName: user.displayName!);
    } else {
      return null;
    }
  }

  @override
  Future<UserModel?> loginWithEmailAndPassword(
      String email, String senha) async {
    var response =
        await _auth.signInWithEmailAndPassword(email: email, password: senha);
    var user = response.user!;
    return UserModel(email: user.email!, displayName: user.displayName!);
  }

  @override
  Future<UserModel?> registerWithEmailAndPassword(
      String nome, String email, String senha) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }
}
