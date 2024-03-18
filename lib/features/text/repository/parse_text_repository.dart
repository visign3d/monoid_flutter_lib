import 'package:parse_server_sdk/parse_server_sdk.dart';

import '../../../abstract/model/models/models.dart';
import '../../../abstract/text/a_text_repository.dart';


class ParseTextRepository extends ATextRepository {
  ///memory cache
  final List<TextModel> models = [];

  ///parseObjects cache
  final List<ParseObject> parseObjects = [];

  @override
  Future<void> create(TextModel item) async {
    var p = ParseObject('text')
      ..set('text', item.text)
      ..set('lang', item.lang)
      ..set('model_id', item.id)
      ..set('text_key', item.textKey);
    p.save();
  }

  @override
  Future<void> delete(TextModel item) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<TextModel>> getAll() async {
    List<TextModel> list = [];
    parseObjects.clear();
    var apiResponse = await ParseObject('text').getAll();
    if (apiResponse.result == null) return [];
    if (apiResponse.success) {
      for (var testObject in apiResponse.result) {
        testObject as ParseObject;
        if (testObject == null) continue;
        parseObjects.add(testObject);
        TextModel model = TextModel(
            textKey: testObject.get('text_key') ?? '',
            lang: testObject.get('lang') ?? '',
            text: testObject.get('text') ?? '',
            id: testObject.get('model_id') ?? '');

        list.add(model);
      }
    }
    models.clear();
    models.addAll(list);
    return list;
  }

  @override
  Future<TextModel?> getById(id) async {
    id as String;
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('Text'));

    parseQuery.whereContains('model_id', id);
  }

  @override
  Future<void> update(TextModel item) async {
    var o = parseObjects
        .firstWhere((element) => element.get('model_id') == item.id);
    o
      ..set('text_key', item.textKey)
      ..set('text', item.text)
      ..set('lang', item.lang)
      ..set('model_id', item.id);
    o.update();
  }
}
