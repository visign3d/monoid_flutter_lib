

import 'package:get/get.dart';


import '../../abstract/model/grid/grid_model.dart';
import '../../abstract/service/a_service.dart';
import 'cursor_model.dart';
import 'cursor_rx_view.dart';

class CursorService extends AService {

  late CursorRxView cursorRxView;


  @override
  start() {
    cursorRxView = Get.put(CursorRxView());
    cursorRxView.init(CursorModel(position: const GridPosition(posY: 0, posX: 0)));
  }
}
