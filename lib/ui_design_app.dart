// ui_design_app.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/core/di/dependency_injection.dart';
import 'package:mini_ui_design/core/routing/app_router.dart';
import 'package:mini_ui_design/core/theming/colors.dart';

class UiDesignApp extends StatelessWidget {
  const UiDesignApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp.router(
          theme: ThemeData(
            primaryColor:ColorsManager.primary,
              scaffoldBackgroundColor: Colors.white
          ),
          title: 'Ui Design App',
          debugShowCheckedModeBanner: false,
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
        );
      },
    );
  }
}