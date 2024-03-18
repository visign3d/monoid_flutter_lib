import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


import '../../abstract/command/a_command.dart';
import 'event_bus_service.dart';

class SubscribeEventCommand<T> extends ACommand{
  SubscribeEventCommand(this.listener);

  Function(T) listener;

  EventService eventBusService =Get.find();

  @override
  execute() {
    eventBusService.eventBus.on<T>().listen(listener);
  }



}