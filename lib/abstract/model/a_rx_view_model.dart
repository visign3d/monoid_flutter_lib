import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'a_object.dart';


///reactive view model
abstract class ARxViewModel<M extends AObject> {
  ARxViewModel([M? model]);
  String get modelName => M.runtimeType.toString();

  RxBool initialized = false.obs;

  @mustCallSuper
  init(M model){
    initialized.value=true;

  }


}
