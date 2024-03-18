import 'package:get/get_rx/src/rx_types/rx_types.dart';


import '../../abstract/model/a_rx_view_model.dart';
import '../../abstract/model/grid/grid_model.dart';
import 'cursor_model.dart';

class CursorRxView extends ARxViewModel<CursorModel>{

  late Rx<GridPosition> position ;

  @override
  init(CursorModel model) {
    position=model.position.obs;
  }

}