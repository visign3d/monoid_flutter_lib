import 'package:monoid_flutter_lib/abstract/abstract_lib.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart' as s;
import '../../parse_user.dart' as p;

class LoginParseUserCommand extends ACommand<Future<s.ParseResponse>> {
  LoginParseUserCommand(this.user);

  p.ParseUser user;

  @override
  Future<s.ParseResponse> call() async {
    s.ParseResponse response =
        await s.ParseUser(user.key, user.password, user.email).login();
    return response;
  }
}
