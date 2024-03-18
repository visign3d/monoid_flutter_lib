import 'package:get/get.dart';



import '../../../abstract/command/a_command.dart';
import '../../app/navigation/route_names.dart';
import '../widget/category_page.dart';
import 'category_model.dart';

class GoToCategoryPageCommand extends ACommand {
  GoToCategoryPageCommand(this.model);

  final CategoryModel model;

  @override
  execute() {
    Get.toNamed(RouteNames.categoryPage,arguments: [model.id]);
  }
}
