import 'package:monoid_flutter_lib/abstract/abstract_lib.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class CallParseFunctionCommand extends ACommand{
  CallParseFunctionCommand(this.name);

  final String name;
  @override
  Future<ParseResponse> call() async {
    Parse().healthCheck();
    final ParseCloudFunction function = ParseCloudFunction(name);
    final ParseResponse parseResponse = await function.execute();
    if (parseResponse.success && parseResponse.result != null) {
      print(parseResponse.result);
    }
    return parseResponse;
  }



}