import 'package:firebase_auth/firebase_auth.dart';

import '../interfaces/login_repository_interface.dart';

class LoginRepository implements ILoginRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  User? getUser() {
    return _auth.currentUser;
  }

  @override
  Future<User?> loginWithEmailAndPassword(String email, String senha) async {
    var response =
        await _auth.signInWithEmailAndPassword(email: email, password: senha);
    return response.user;
  }

  @override
  Future<User?> registerWithEmailAndPassword(
      String nome, String email, String senha) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }
}
