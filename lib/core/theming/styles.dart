import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/core/theming/colors.dart';

class TextStyles{
  static TextStyle font22DarkBold= TextStyle(
    fontSize: 22.sp,
    fontWeight:FontWeight.w700,
    color: ColorsManager.darkBlue,
    letterSpacing: 0,
    height: 1.0,
    fontFamily: 'Raleway',
  );

  static TextStyle font14lightGrayMedium= TextStyle(
    fontSize: 14.sp,
    fontWeight:FontWeight.w500,
    color: ColorsManager.lightGray,
    letterSpacing: 0,
    height: 1.0,
    fontFamily: 'Raleway',
  );

  static TextStyle font14lightPurpleBold = TextStyle(
  fontSize: 14.sp,
  color:  ColorsManager.lightPurple,
  fontWeight: FontWeight.bold,
  fontFamily: "Raleway"
  );
}