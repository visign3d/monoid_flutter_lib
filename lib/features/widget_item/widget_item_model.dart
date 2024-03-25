import 'package:monoid_flutter_lib/abstract/abstract_lib.dart';
import 'package:monoid_flutter_lib/abstract/item/item.dart';

import '../../abstract/model/grid/grid_item_model.dart';
//todo finish widget item
class WidgetItemModel extends AObject {
  WidgetItemModel(
      {this.items = const [],
      required this.item ,
      required this.gridItemModel,
      required super.id});

  final GridItemModel gridItemModel;

  final AItem item;

  final List<WidgetItemModel> items;
}
