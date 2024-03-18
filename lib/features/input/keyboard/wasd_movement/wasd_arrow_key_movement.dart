import 'package:flutter/cupertino.dart';

import '../../../../abstract/command/a_command.dart';
import '../../input_rx_view.dart';


///run when key press event registered
class WASDArrowKeyCommand extends ACommand{
  WASDArrowKeyCommand(this.eventModel);

  KeyEventModel eventModel;

  @override
  execute() {
    // TODO: implement execute
    throw UnimplementedError();
  }





}