import 'package:devmaua/modules/login/models/user_model.dart';
import 'package:devmaua/modules/login/repositories/login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class FirebaseAuthMock extends Mock implements FirebaseAuth {}

void main() {
  var authMock = FirebaseAuthMock();
  var repository = LoginRepository(authMock);
}
