

import '../../abstract/service/a_service.dart';
import 'hive_init_command.dart';

class HiveLocalStore extends AService{
  @override
  start() async{

    await HiveInitCommand().execute();
  }



}