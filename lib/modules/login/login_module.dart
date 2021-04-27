import 'package:flutter_modular/flutter_modular.dart';
import 'package:devmaua/modules/login/login_page.dart';
import './repositories/login_repository.dart';
import './login_controller.dart';

class LoginModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
        (i) => LoginController(loginRepository: LoginRepository())),
    Bind.lazySingleton((i) => LoginRepository()),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => LoginPage())
  ];
}
