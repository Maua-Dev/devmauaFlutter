import 'package:firebase_auth/firebase_auth.dart';

abstract class ILoginRepository {
  User? getUser();
  Future<User?> loginWithEmailAndPassword(String email, String senha);
  Future<User?> registerWithEmailAndPassword(
      String nome, String email, String senha);
}
