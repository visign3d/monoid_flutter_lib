import 'package:get/get.dart';

import '../../abstract/command/a_command.dart';
import 'event_bus_service.dart';



class FireEventCommand extends ACommand{
  FireEventCommand(this.event);

  dynamic event;

  EventService eventBusService =Get.find();
  @override
  call() {
    eventBusService.eventBus.fire(event);
  }




}