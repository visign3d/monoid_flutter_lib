

import '../model/a_object.dart';
import '../model/grid/grid_model.dart';
///todo finish ALayout
abstract class ALayout extends AObject {
  const ALayout({this.elements = const [], required super.id});

  final List<ALayoutElement> elements;
}

abstract class ALayoutElement extends AObject {
  final int? index;

  ///(posX,posY) : left,top
  ///
  /// - screen position in pixels
  /// - posX : from left side of container ,
  /// - posY : from top of container
  ///
  /// O-----   top
  ///
  /// |  [Widget]
  ///
  /// |
  ///
  /// |
  ///
  /// left
  ///
  double? posX, posY;

  ///elevation of element describes if element is behind or on top other elements in UI layers
  int? elevation;
  ///if grid layout is active
  GridPosition? gridPosition;

  ///item widget type name
  String? widgetType;

  ALayoutElement({
    this.index,
    this.gridPosition,
    this.posX,
    this.posY,
    this.elevation,
    this.widgetType,
    required super.id,
  });
}
