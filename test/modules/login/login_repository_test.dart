import 'package:devmaua/modules/login/interfaces/login_repository_interface.dart';
import 'package:devmaua/modules/login/models/user_model.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class LoginRepository extends Mock implements ILoginRepository {}

void main() {
  var repository = LoginRepository();

  test('test get User', () {
    when(repository.getUser()).thenReturn(
        UserModel(email: 'hector@gmail.com', displayName: 'ronaldinho'));
    var user = repository.getUser()!;
    expect(user.email, 'hector@gmail.com');
    expect(user.displayName, 'ronaldinho');
  });
}
