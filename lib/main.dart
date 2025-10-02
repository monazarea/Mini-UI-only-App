import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/ui_design_app.dart';

import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setUpGetIt();
  // To fix texts being hidden bug in flutter_screenUtil in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(UiDesignApp());
}

