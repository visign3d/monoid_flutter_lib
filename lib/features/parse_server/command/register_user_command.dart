import 'package:monoid_flutter_lib/abstract/abstract_lib.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import '../../../abstract/user/user.dart';

class RegisterParseUserCommand extends ACommand<Future<ParseResponse>> {
  RegisterParseUserCommand(this.user);

  AUser user;

  @override
  Future<ParseResponse> call() async {

    var u = ParseUser.createUser(user.key, user.password, user.email);

    ParseResponse response = await u.signUp();

    return response;
  }
}
