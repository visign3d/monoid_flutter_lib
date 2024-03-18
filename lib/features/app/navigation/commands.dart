

import 'package:get/get.dart';

import 'package:monoid_flutter_lib/features/app/navigation/route_names.dart';

import '../../../abstract/command/a_command.dart';

class GetToAdmin extends ACommand {
  @override
  execute() {
    Get.toNamed(RouteNames.frontEnd);
  }
}
