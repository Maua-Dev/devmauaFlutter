import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../lib/modules/login/interfaces/login_repository_interface.dart';
import '../../../lib/modules/login/login_controller.dart';
import '../../../lib/modules/login/login_module.dart';

class LoginRepository extends Mock implements ILoginRepository {}

void main() {
  initModule(LoginModule(), replaceBinds: [
    Bind.lazySingleton<ILoginRepository>((i) => LoginRepository())
  ]);

  test('controller and repository instance', () {
    var loginController = Modular.get<LoginController>();
    expect(loginController, isInstanceOf<LoginController>());
    var loginRepository = Modular.get<LoginRepository>();
    expect(loginController.loginRepository, loginRepository);
  });
}
