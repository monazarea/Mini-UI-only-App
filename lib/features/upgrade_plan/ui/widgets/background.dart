import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/colors.dart';

class Background extends StatelessWidget {
  const Background({super.key, });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorsManager.gradientBegin,
            ColorsManager.gradientEnd
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -115 .h,
            left: -145.w,
            child: SvgPicture.asset(
              'assets/svgs/star2.svg',
              width: 388.42.w,
              height: 388.42.h,
            ),
          ),
          Positioned(
            top: 162.h,
            left: 245.w,
            child: SvgPicture.asset(
              'assets/svgs/star1.svg',
              width: 288.95.w,
              height: 288.95.h,
            ),
          ),
         // child,
        ],
      ),
    );
  }
}
