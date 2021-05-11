import 'package:devmaua/modules/login/interfaces/login_repository_interface.dart';
import 'package:devmaua/modules/login/login_controller.dart';
import 'package:devmaua/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class LoginRepository extends Mock implements ILoginRepository {}

void main() {
  LoginController? login;
  initModule(LoginModule(), replaceBinds: [
    Bind.lazySingleton<ILoginRepository>((i) => LoginRepository())
  ]);

  setUpAll(() {
    login = Modular.get<LoginController>();
  });
  test('test set email', () {
    var controller = login!;
    expect(controller.getEmail, '');
    controller.setEmail('hector');
    expect(controller.getEmail, 'hector');
  });
}
