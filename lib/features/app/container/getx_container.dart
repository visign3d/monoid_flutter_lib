import 'package:get/get.dart';

import '../../../abstract/container/a_container.dart';

class GetXContainer extends AContainer{
  @override
  T get<T>(String? id) {
   return Get.find<T>(tag: id);
  }

  @override
  lazyPut<T>(T object, String? id) {
    Get.lazyPut<T>(() => object,tag: id);
  }

  @override
  put<T>(T object, String? id) {
    Get.put<T>(object,tag: id);
  }
}