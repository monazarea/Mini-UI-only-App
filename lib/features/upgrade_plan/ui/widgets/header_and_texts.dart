import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/core/theming/colors.dart';

import '../../../../core/theming/styles.dart';

class HeaderAndTexts extends StatelessWidget {
  const HeaderAndTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            SizedBox(width: 105.w),
            Text("Upgrade Plan", style: TextStyles.font22DarkBold),
            SizedBox(width: 66.w),
            CircleAvatar(
              radius: 15.r,
              backgroundColor: Colors.white,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.close,
                  size: 23.sp,
                  color: ColorsManager.darkBlue,
                ),
                onPressed: () {
                  Navigator.pop(context); // يقفل الاسكرين
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 9.h),

        Image.asset(
          'assets/images/Rocket Boy.png',
          width: 207.w,
          height: 207.h,
        ),
        SizedBox(height: 4.h),

        Text(
          "Seamless Anime \nExperience, Ad-Free.",
          textAlign: TextAlign.center,
          style: TextStyles.font22DarkBold.copyWith(fontSize: 24.sp,height: 1.3),
        ),
        SizedBox(height: 4.h,),
        Text(
          "Enjoy unlimited anime streaming without\n interruptions.",
          textAlign: TextAlign.center,
          style: TextStyles.font14lightGrayMedium.copyWith(height: 1.2),
        )
      ],
    );
  }
}
