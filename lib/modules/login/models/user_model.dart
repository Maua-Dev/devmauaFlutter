class UserModel {
  final String email;
  final String displayName;

  UserModel({this.email = '', this.displayName = ''});

  UserModel copyWith({String? email, String? displayName}) {
    return UserModel(
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
    );
  }
}
