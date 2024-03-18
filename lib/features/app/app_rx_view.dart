import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';


import '../../abstract/model/a_rx_view_model.dart';
import '../category/category_rx_view.dart';
import 'model/app_model.dart';

class AppRxView extends ARxViewModel<AppModel> {
  final name = ''.obs;

  final title = ''.obs;

  final firstLaunch = false.obs;

  final theme = ThemeData().obs;



  RxList<CategoryRxView> categories = RxList();

  @override
  init(AppModel model) {
    name.value=model.name;
    title.value=model.title;
    firstLaunch.value=model.firstLaunch;
    //todo init theme


  }



}
