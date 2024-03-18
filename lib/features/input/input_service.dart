

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../abstract/service/a_service.dart';
import 'input_rx_view.dart';

class InputService extends AService{
  @override
  start() {
    Get.put(InputRxView());

  }




}