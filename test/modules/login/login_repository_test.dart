import 'package:devmaua/modules/login/models/user_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../lib/modules/login/interfaces/login_repository_interface.dart';
import '../../../lib/modules/login/login_controller.dart';
import '../../../lib/modules/login/login_module.dart';

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
