import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

import '../../abstract/service/a_service.dart';

class ParseService extends AService {
  ParseService(String id) : super(id: id);

  RxString statusCode = ''.obs;

  final RxString parseClientKey = ''.obs;

  final RxString parseId = ''.obs;

  final RxString parseUrl = ''.obs;

  @override
  Future start() async {
    if (kDebugMode) {
      print('Start parse...');
    }
    Parse p = await Parse().initialize(id, parseUrl.value,
        clientKey: parseClientKey.value, autoSendSessionId: true);
    var a = await p.healthCheck();
    statusCode.value = a.toString();
  }
}
