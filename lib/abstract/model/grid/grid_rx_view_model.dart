import 'dart:ui';



import 'package:get/get.dart';

import '../a_rx_view_model.dart';
import 'grid_item_model.dart';
import 'grid_model.dart';

class GridRxView extends ARxViewModel<GridModel> {
  Rx<GridSize> size = GridSize.builder().obs;

  ///one grid unit , is one grid squere
  late Rx<GridUnit> unit = GridUnit.builder().obs;

  ///maximum item size allowed in grid
  Rx<GridSize?> maxItemSize = GridSize.builder().obs;

  ///items dropped on grid
  RxList<GridItemModel> items = RxList();

  ///current position of user, GridCursor
  Rx<GridPosition> currentPosition = const GridPosition.builder().obs;

  @override
  init(GridModel model) {
    super.init(model);
    size = model.size.obs;
    unit = model.unit.obs;
    maxItemSize = model.maxItemSize.obs;
    items.addAll(model.items);
    currentPosition = model.currentPosition.obs;
  }
}
