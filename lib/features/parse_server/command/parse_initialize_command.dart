import 'package:monoid_flutter_lib/abstract/abstract_lib.dart';
import 'package:monoid_flutter_lib/features/parse_server/command/parse_cloud_function_command.dart';
import 'package:monoid_flutter_lib/features/parse_server/parse_key.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

import '../../../development/log/monolog.dart';

class ParseInitializeCommand extends ACommand {
  ParseInitializeCommand(this.key);

  ParseKey key;

  @override
  Future call() async {

    var parse =await Parse().initialize(key.appName,
        key.parseServerUrl,
        clientKey: key.clientKey,autoSendSessionId: true);
    var a = await ParseCloudFunctionCommand('hello').call();
    var health =await parse.healthCheck();
    monolog('parse : ${health.result}');
    monolog('Parse hello : ${a.result}');
  }
}
