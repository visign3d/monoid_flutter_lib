import 'dart:ui';


import '../../item/item.dart';
import '../a_object.dart';
import 'grid_model.dart';

class GridItemModel<T extends AItem> extends AObject {
  GridItemModel(
      {this.model,
      required this.unit,
      required this.size,
      required this.position,
      required super.id});

  ///size of grid element in grid units
  final GridSize size;

  ///position of the element on the grid
  final GridPosition position;

  final GridUnit unit;
  ///data model associated with grid item
  final T? model;

  Size get displaySize => Size(
        size.sizeX * unit.size.width,
        size.sizeY * unit.size.height,
      );

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
