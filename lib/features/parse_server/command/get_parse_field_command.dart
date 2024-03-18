import 'package:get/get.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

import '../../../abstract/command/a_command.dart';


class GetParseFieldCommand extends ACommand {
  const GetParseFieldCommand(
      {required this.id, required this.key, required this.className});

  final String className;
  final String id;
  final String key;

  @override
  Future<List<ParseObject>> execute() async{
    QueryBuilder<ParseObject> queryTodo =
    QueryBuilder<ParseObject>(ParseObject('Todo'));
    final ParseResponse apiResponse = await queryTodo.query();

    if (apiResponse.success && apiResponse.results != null) {
      return apiResponse.results as List<ParseObject>;
    } else {
      return [];
    }
  }



}
