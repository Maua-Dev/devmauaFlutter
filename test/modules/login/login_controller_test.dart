import 'package:devmaua/modules/login/interfaces/login_repository_interface.dart';
import 'package:devmaua/modules/login/login_controller.dart';

import 'package:devmaua/modules/login/models/user_model.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class LoginRepository extends Mock implements ILoginRepository {
  @override
  UserModel? getUser() {
    return UserModel(email: 'hector@gmail.com', displayName: 'ronaldinho');
  }

  @override
  Future<UserModel?> loginWithEmailAndPassword(String email, String senha) {
    return Future.value(UserModel(email: email, displayName: senha));
  }
}

void main() {
  var login = LoginController(loginRepository: LoginRepository());

  setUp(() {
    login = LoginController(loginRepository: LoginRepository());
  });
  test('TEST - get user email from repository', () {
    expect(login.getUserEmail, 'hector@gmail.com');
  });
  test('TEST - get login model equal instance values changes', () {
    var controller = login;
    controller.setEmail('hector');
    controller.setSenha('12345678');
    expect(controller.getLoginModel.email, 'hector');
    expect(controller.getLoginModel.password, '12345678');
  });
  test('TEST - set email', () {
    var controller = login;
    expect(controller.getEmail, '');
    controller.setEmail('hector');
    expect(controller.getEmail, 'hector');
  });
  test('TEST - set senha', () {
    var controller = login;
    expect(controller.getSenha, '');
    controller.setSenha('12345678');
    expect(controller.getSenha, '12345678');
  });
  test('TEST - get invalid login model', () {
    var controller = login;
    expect(controller.invalidLoginModel, true);
    controller.setEmail('hector');
    expect(controller.invalidLoginModel, true);
    controller.setSenha('12345');
    expect(controller.invalidLoginModel, true);
    controller.setEmail('hector@gmail.com');
    controller.setSenha('12345678');
    expect(controller.invalidLoginModel, false);
  });

  test('TEST - function login', () async {
    var controller = login;
    controller.setEmail('hector@gmail.com');
    controller.setSenha('12345678');
    await controller.login();
  });
}
