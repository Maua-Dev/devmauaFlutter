// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  Computed<String>? _$getUserEmailComputed;

  @override
  String get getUserEmail =>
      (_$getUserEmailComputed ??= Computed<String>(() => super.getUserEmail,
              name: '_LoginControllerBase.getUserEmail'))
          .value;
  Computed<String>? _$getEmailComputed;

  @override
  String get getEmail =>
      (_$getEmailComputed ??= Computed<String>(() => super.getEmail,
              name: '_LoginControllerBase.getEmail'))
          .value;
  Computed<String>? _$getSenhaComputed;

  @override
  String get getSenha =>
      (_$getSenhaComputed ??= Computed<String>(() => super.getSenha,
              name: '_LoginControllerBase.getSenha'))
          .value;
  Computed<LoginModel>? _$getLoginModelComputed;

  @override
  LoginModel get getLoginModel => (_$getLoginModelComputed ??=
          Computed<LoginModel>(() => super.getLoginModel,
              name: '_LoginControllerBase.getLoginModel'))
      .value;
  Computed<bool>? _$invalidLoginModelComputed;

  @override
  bool get invalidLoginModel => (_$invalidLoginModelComputed ??= Computed<bool>(
          () => super.invalidLoginModel,
          name: '_LoginControllerBase.invalidLoginModel'))
      .value;

  final _$_loginModelAtom = Atom(name: '_LoginControllerBase._loginModel');

  @override
  LoginModel get _loginModel {
    _$_loginModelAtom.reportRead();
    return super._loginModel;
  }

  @override
  set _loginModel(LoginModel value) {
    _$_loginModelAtom.reportWrite(value, super._loginModel, () {
      super._loginModel = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_LoginControllerBase.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSenha(String value) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
getUserEmail: ${getUserEmail},
getEmail: ${getEmail},
getSenha: ${getSenha},
getLoginModel: ${getLoginModel},
invalidLoginModel: ${invalidLoginModel}
    ''';
  }
}
