class LoginModel {
  final String email;
  final String password;

  LoginModel({this.email = '', this.password = ''});

  LoginModel copyWith({String? email, String? password}) {
    return LoginModel(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  bool get invalidEmail => !this.email.contains("@");
  bool get invalidPassword => this.password.length < 8;
}
