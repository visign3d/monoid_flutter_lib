

import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../../features/app/home_page.dart';
import '../../features/theme/app_theme.dart';
import '../features/app/navigation/route_names.dart';
//todo finish getX app widget
class GetXApp extends StatelessWidget {
  const GetXApp({super.key, required this.title});

  final String title;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteNames.initial,
      getPages: getRoutes,
      debugShowCheckedModeBanner: false,
      title: title,
      theme: appTheme,
      home: HomePage(),
    );
  }
}