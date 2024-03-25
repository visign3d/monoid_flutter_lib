

import 'package:event_bus/event_bus.dart';

import '../../abstract/service/a_service.dart';
import '../input/input_rx_view.dart';


class EventService extends AService {
  EventBus eventBus = EventBus();

  EventBus keyEvents = EventBus();

  @override
  start() {
    eventBus.on().listen(onEvent);
  }



  onEvent(dynamic event) {
    if (event is KeyEventModel) {
      keyEvents.fire(event);
    }
  }

  subscribeToKeyEvents() {}
}
