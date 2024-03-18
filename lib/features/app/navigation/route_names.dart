import 'package:get/get_navigation/src/routes/get_route.dart';


import '../../category/category_rx_view.dart';
import '../../category/widget/category_page.dart';
import '../../front_end/widget/admin_page.dart';
import '../home_page.dart';

abstract class RouteNames {
  static get initial => '/';

  static get frontEnd => '/${Admin().runtimeType.toString()}';

  static get categoryPage => '/${CategoryPage(
        categoryName: '',
        rxView: CategoryRxView(),
      ).runtimeType.toString()}/:id';

//static get counterView => '/${CounterView().runtimeType.toString()}';

//static get devView => '/${DevScreen().runtimeType.toString()}';

  ///todo add dev page route name
}

List<GetPage>? getRoutes = [
  GetPage(name: RouteNames.initial, page: () => HomePage()),
  //GetPage(name: '${RouteNames.counterView}/:id', page: () => CounterView()),
  GetPage(name: RouteNames.frontEnd, page: () => Admin()),
  GetPage(
      name: RouteNames.categoryPage,
      page: () => CategoryPage(
            categoryName: '',
            rxView: CategoryRxView(),
          )),

  //GetPage(name: RouteNames.devView, page: () => DevScreen()),
];
