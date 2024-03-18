
import 'package:get/get.dart';

import 'a_service.dart';

///todo test service container
class ServiceContainer {
  final String? name;

  final List<AService> services;

  ServiceContainer({
    this.name,
    required this.services,
  });

  Future start() async {
    ///separate put and start in two loops
    for (var i in services) {
      Get.put(i);
    }
    for (var i in services) {
      await i.start();
    }
  }
}
