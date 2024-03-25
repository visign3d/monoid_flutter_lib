import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:monoid_flutter_lib/abstract/abstract_lib.dart';
import 'package:monoid_flutter_lib/abstract/container/container.dart';
import 'package:monoid_flutter_lib/development/log/monolog.dart';
import 'package:monoid_flutter_lib/features/app/app_rx_view.dart';
import 'package:monoid_flutter_lib/features/app/container/getx_container.dart';
import 'package:monoid_flutter_lib/features/app/home_page.dart';
import 'package:monoid_flutter_lib/features/app/navigation/route_names.dart';
import 'package:monoid_flutter_lib/features/category/category_rx_view.dart';
import 'package:monoid_flutter_lib/features/category/model/category_model.dart';
import 'package:monoid_flutter_lib/features/cursor/cursor_service.dart';
import 'package:monoid_flutter_lib/features/event_bus/event_bus_service.dart';
import 'package:monoid_flutter_lib/features/firebase/google_sign_in_service.dart';
import 'package:monoid_flutter_lib/features/http/http_post_command.dart';
import 'package:monoid_flutter_lib/features/image/service/image_service.dart';
import 'package:monoid_flutter_lib/features/input/input_rx_view.dart';
import 'package:monoid_flutter_lib/features/parse_server/command/call_function/call_function_command.dart';
import 'package:monoid_flutter_lib/features/parse_server/command/call_function/login_user_command.dart';
import 'package:monoid_flutter_lib/features/parse_server/command/parse_cloud_function_command.dart';
import 'package:monoid_flutter_lib/features/parse_server/command/parse_initialize_command.dart';
import 'package:monoid_flutter_lib/features/parse_server/parse_service.dart';
import 'package:monoid_flutter_lib/features/text/repository/parse_text_repository.dart';
import 'package:monoid_flutter_lib/features/text/service/text_service.dart';
import 'package:monoid_flutter_lib/features/theme/app_theme.dart';
import 'package:monoid_flutter_lib/features/xls/xls_service.dart';
import 'package:monoid_flutter_lib/keys/monoid_parse_key.dart';
import 'features/parse_server/parse_user.dart' as user;
import 'features/parse_server/command/register_user_command.dart';
import 'package:flutter_parse/flutter_parse.dart' as fp;
import 'package:parse_server_sdk/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  await ParseInitializeCommand(MonoidParseKey()).call();

  DC.initialize(GetXContainer());
  DC.put<EventService>(EventService());
  DC.put(CategoryRxView())?.init(CategoryModel());
  DC.put(XlsService());
  DC.put(AppRxView());

  ///keyboard input events
  DC.put(InputRxView());
  DC.put(GoogleSignInService());

  ///cursor movement , user data ...
  DC.put(CursorService())?.start();
  await ImageService().start();

  ///todo separate config file
  ///todo admin login? store parse server data on local storage

  await DC.put(ParseTextRepository())?.getAll();
  await DC.put(TextService())?.start();

  //print(await FirebaseService().getImageURL('home_page/dome-8.jpg'));

  runApp(MyApp());
}

//todo create getxapp widget
class MyApp extends StatelessWidget {
  MyApp({super.key});

  final FocusNode keyboard = FocusNode();

  final InputRxView inputRxView = Get.find();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: false,
      initialRoute: RouteNames.initial,
      getPages: getRoutes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: KeyboardListener(
          autofocus: true,
          focusNode: keyboard,
          onKeyEvent: inputRxView.onKey,
          child: HomePage()),
    );
  }
}

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fgfhg'),
      ),
    );
  }
}
