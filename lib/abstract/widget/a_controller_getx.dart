import 'package:get/get.dart';

abstract class AController<T> extends GetxController {
AController([this.tag]){
  if(Get.isRegistered(tag: tag))return;
  Get.put<T>(this as T,tag: tag);
}
String? tag;



}