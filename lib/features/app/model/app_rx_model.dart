import 'package:get/get.dart';

import '../../../abstract/model/a_rx_view_model.dart';
import 'app_model.dart';


class AppRxModel extends ARxViewModel<AppModel> {
  Rx<AppModel> model = AppModel(firstLaunch: true, id: 'visign_gallery').obs;
}
