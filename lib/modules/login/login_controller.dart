import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import './models/login_model.dart';
import './interfaces/login_repository_interface.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final ILoginRepository loginRepository;

  @computed
  String get getUserEmail => loginRepository.getUser()!.email;

  @observable
  LoginModel _loginModel = LoginModel();

  _LoginControllerBase({required this.loginRepository});

  @action
  setEmail(String value) {
    _loginModel = _loginModel.copyWith(email: value);
  }

  @action
  setSenha(String value) {
    _loginModel = _loginModel.copyWith(password: value);
  }

  @computed
  String get getEmail => _loginModel.email;

  @computed
  String get getSenha => _loginModel.password;

  @computed
  LoginModel get getLoginModel => _loginModel;

  @computed
  bool get invalidLoginModel =>
      _loginModel.invalidEmail || _loginModel.invalidPassword;

  @action
  Future<void> login() async {
    await loginRepository.loginWithEmailAndPassword(
        _loginModel.email, _loginModel.password);
  }
}
