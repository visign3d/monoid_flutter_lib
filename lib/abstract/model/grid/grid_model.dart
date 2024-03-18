import 'dart:ui';



import '../a_object.dart';
import 'grid_item_model.dart';
///default builder
class GridModel extends AObject {
  GridModel({
    this.currentPosition = const GridPosition(id: '', posX: 0, posY: 0),
    required this.size,
    required this.unit,
    this.maxItemSize,
    this.items = const [],
    required super.id,
  });

  ///overall size of grid
  final GridSize size;

  ///one grid unit , is one grid squere
  final GridUnit unit;

  ///maximum item size allowed in grid
  final GridSize? maxItemSize;

  ///items dropped on grid
  final List<GridItemModel> items;

  ///current position of user, GridCursor
  final GridPosition currentPosition;

  @override
  List<Object?> get props => [id];
}

///one grid square size in px
class GridUnit extends AObject {
  GridUnit({required this.size, required super.id});

  GridUnit.builder({this.size=const Size(60,60), super.id=''});

  Size size;

  @override
  List<Object?> get props => [size.width, size.height];
}

///grid size in int x-columns x y-rows
class GridSize extends AObject {
  GridSize({required super.id, required this.sizeX, required this.sizeY});

  GridSize.builder({super.id='', this.sizeX=1, this.sizeY=1});

  final int sizeX, sizeY;

  @override
  List<Object?> get props => [sizeX, sizeY];
}

class GridPosition extends AObject {
  const GridPosition(
      {super.id='', required this.posX, required this.posY});

  const GridPosition.builder(
      {super.id='', this.posX=1, this.posY=1});


  final int posX;

  final int posY;

  @override
  List<Object?> get props => [posX, posY];
}
