// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:mini_ui_design/core/routing/routes.dart';
// import 'package:mini_ui_design/features/upgrade_plan/ui/upgrade_plan_screen.dart';
//
// class AppRouter{
//   Route ? generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case Routes.upgradeScreen:
//         return MaterialPageRoute(
//             builder: (_) => UpgradePlanScreen()
//         );
//     }
//   }
// }



import 'package:auto_route/auto_route.dart';
import 'package:mini_ui_design/features/upgrade_plan/ui/upgrade_plan_screen.dart';
import 'package:mini_ui_design/features/details/ui/details_screen.dart';
import 'package:mini_ui_design/features/home/ui/home_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: UpgradePlanRoute.page, initial: true),
    AutoRoute(page: DetailsRoute.page),
    AutoRoute(page: HomeRoute.page),
  ];
}
