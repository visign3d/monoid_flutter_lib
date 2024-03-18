import 'package:flutter/material.dart';

import '../../../abstract/model/a_object.dart';


class AppModel extends AObject<AppModel> {
  AppModel({this.firstLaunch=false, required super.id});

  final name='visign_gallery';

  final title ='VisignTents';

  final bool firstLaunch;

  final theme = 'default';

  @override
  List<Object?> get props => [name];
}

