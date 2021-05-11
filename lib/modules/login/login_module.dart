import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:devmaua/modules/login/login_page.dart';
import './repositories/login_repository.dart';
import './login_controller.dart';
import 'interfaces/login_repository_interface.dart';

class LoginModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [
    Bind.instance((i) => FirebaseAuth.instance),
    Bind.lazySingleton<LoginController>(
        (i) => LoginController(loginRepository: i<ILoginRepository>())),
    Bind.lazySingleton<ILoginRepository>(
        (i) => LoginRepository(i<FirebaseAuth>())),
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => LoginPage())
  ];
}
