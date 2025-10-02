import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/colors.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground({super.key, });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorsManager.gradientBeginForHome,
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
            left: 140.39.w,
            child: SvgPicture.asset(
              'assets/svgs/star1.svg',
              width: 432.w,
              height: 432.h,
            ),
          ),
        ],
      ),
    );
  }
}
