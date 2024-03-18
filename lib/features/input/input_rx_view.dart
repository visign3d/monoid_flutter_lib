




import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../abstract/model/a_object.dart';
import '../../abstract/model/a_rx_view_model.dart';

class InputRxView extends ARxViewModel {
  final Rx<KeyEventModel> event = KeyEventModel(id: '').obs;

  onKey(KeyEvent event) {
    //print(event.character);
    this.event.value = KeyEventModel(id: event.character ?? '', event: event);
  }
}

class KeyEventModel extends AObject {
  KeyEventModel({this.event, required super.id});

  KeyEvent? event;

  @override
  // TODO: implement props
  List<Object?> get props => [event?.character];
}
