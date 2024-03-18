import 'package:flutter/foundation.dart';

import '../model/a_object.dart';
import '../service/a_service.dart';


/// Command represents a single function with parameters.
///
/// Parameters are described in Command class fields
///
/// [ACommand]<T> : T is for return [value] : null
///
///
/// -- Run command: [ACommand]<[T]>().execute()
///
///
/// or,
///
/// -- [execute]<[T]>([ACommand]<[T]>()) ,
///
/// to add command to [CommandService] cache and run
abstract class ACommand<T> extends AObject{
  const ACommand({super.id=''});
  T execute();
}



///command execution + Command registration in command service
execute<T>(ACommand<T> command){
  CommandService.createCommand(command);
  return command.execute();
}



class CommandService extends AService{

  static final CommandService _instance = CommandService._internal();

  factory CommandService() {
    return _instance;
  }

  CommandService._internal() {
   if (kDebugMode) {
     print('command service started');
   }
  }

  static final List<ACommand> _commands =[];



  static createCommand(ACommand command){
    _commands.add(command);
  }

  @override
  start() {
    throw UnimplementedError();
  }
}

