import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter_parse/flutter_parse.dart';
//import 'package:parse_server_sdk/parse_server_sdk.dart';

import '../../abstract/service/a_service.dart';

class ParseService extends AService {
  ParseService(String id, String url, String client) : super(id: id) {
    appId.value = id;
    parseUrl.value = url;
    parseClientKey.value = client;
  }

  RxString statusCode = ''.obs;

  final RxString parseClientKey = ''.obs;

  final RxString parseId = ''.obs;

  final RxString parseUrl = ''.obs;

  final RxString appId = ''.obs;

  @override
  Future start() async {
    Parse p = Parse.initialize(ParseConfiguration(
        server: parseUrl.value,
        applicationId: appId.value,
        clientKey: parseClientKey.value));




    if (kDebugMode) {
      print('Start parse...');
    }
    // Parse p = await Parse().initialize(id, parseUrl.value,
    //     clientKey: parseClientKey.value, autoSendSessionId: true);

    //statusCode.value = a.toString();
  }
}
