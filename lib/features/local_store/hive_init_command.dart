




import 'package:hive_flutter/adapters.dart';

import '../../abstract/command/a_command.dart';

class HiveInitCommand extends ACommand {
  @override
  Future execute() async {
    await Hive.initFlutter();
  }
}
