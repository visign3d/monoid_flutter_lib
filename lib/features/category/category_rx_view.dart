

import 'dart:ui';

import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../abstract/model/a_rx_view_model.dart';
import '../../abstract/model/grid/grid_model.dart';
import '../../abstract/model/grid/grid_rx_view_model.dart';
import 'model/category_model.dart';

class CategoryRxView extends ARxViewModel<CategoryModel> {
  RxString text = ''.obs;

  RxString name = ''.obs;

  RxString imageUrl = ''.obs;

  late String id;

  /// category items in grid layout
  GridRxView gridRxView=GridRxView();

  @override
  init(CategoryModel model) {
    super.init(model);
    id = model.id;
    text.value = model.text;
    name.value = model.name;
    imageUrl.value = model.imageUrl;

    var g = GridModel(
        size: GridSize(id: id, sizeX: 25, sizeY: 50),
        unit: GridUnit(size: const Size(50, 50), id: id),
        id: id);

    gridRxView.init(g);
  }
}
