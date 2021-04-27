import 'package:flutter_modular/flutter_modular.dart';
import 'package:devmaua/modules/login/login_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ModuleRoute('login', module: LoginModule())
  ];
}
