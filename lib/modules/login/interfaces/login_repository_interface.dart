import 'package:devmaua/modules/login/models/user_model.dart';

abstract class ILoginRepository {
  UserModel? getUser();
  Future<UserModel?> loginWithEmailAndPassword(String email, String senha);
  Future<UserModel?> registerWithEmailAndPassword(
      String nome, String email, String senha);
}
