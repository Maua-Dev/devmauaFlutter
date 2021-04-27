import 'package:flutter/material.dart';
import 'package:devmaua/shared/components/textfield_custom_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import './login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (_) {
              return Text(
                controller.getUserEmail,
                style: TextStyle(fontSize: 20),
              );
            }),
            Image.asset(
              'assets/Instituto-Maua-de-Tecnologia_e8f48460.jpg',
              width: 150,
            ),
            TextFieldCustomWidget(
              onChanged: controller.setEmail,
              labelText: 'Email',
              iconData: FontAwesome.mail,
            ),
            TextFieldCustomWidget(
              onChanged: controller.setSenha,
              labelText: 'Senha',
              iconData: Entypo.key,
              obscureText: true,
            ),
            SizedBox(
              height: 16,
            ),
            Observer(builder: (_) {
              return ElevatedButton.icon(
                  onPressed:
                      controller.invalidLoginModel ? null : controller.login,
                  icon: Icon(FontAwesome.login),
                  label: Text('Entrar'));
            })
          ],
        ),
      ),
    );
  }
}
