import 'package:monoid_flutter_lib/abstract/abstract_lib.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

import '../../../development/log/monolog.dart';

class ParseCloudFunctionCommand extends ACommand {
  ParseCloudFunctionCommand(this.name);

  final String name;

  @override
  Future<ParseResponse> call() async {
    final ParseCloudFunction function = ParseCloudFunction(name);
    final ParseResponse parseResponse = await function.execute();
    monolog(parseResponse.result);
    return parseResponse;
  }
}
