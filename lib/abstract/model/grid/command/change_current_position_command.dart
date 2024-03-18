


import '../../../command/a_command.dart';
import '../grid_model.dart';
import '../grid_rx_view_model.dart';

///current position of user
///
/// current position of cursor brackets
class ChangeCurrentPositionCommand extends ACommand {
  ChangeCurrentPositionCommand(
      {required this.newPosition, required this.gridRxView});

  final GridPosition newPosition;

  final GridRxView gridRxView;

  @override
  execute() {
    gridRxView.currentPosition.value=newPosition;
  }
}
