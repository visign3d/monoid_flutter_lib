

import '../../abstract/model/a_object.dart';
import '../../abstract/model/grid/grid_model.dart';

class CursorModel extends AObject {
  CursorModel({required this.position, super.id=''});

  final GridPosition position;

  @override
  List<Object?> get props => [id];
}
