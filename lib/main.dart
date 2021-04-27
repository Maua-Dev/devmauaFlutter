import 'package:devmaua/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:devmaua/app_module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
