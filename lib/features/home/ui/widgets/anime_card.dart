import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/core/routing/app_router.dart';
import 'package:mini_ui_design/core/theming/colors.dart';
import 'package:mini_ui_design/features/details/ui/details_screen.dart';

import '../../../../core/theming/styles.dart';
class AnimeCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;
  final double rating;

  const AnimeCard({
    required this.imageUrl,
    required this.title,
    required this.genre,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(const DetailsRoute());      },
      child: Container(
        width: 184.w,
       //height: 245.h,
       margin: EdgeInsets.only(right: 14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child:  Image.asset(
                    imageUrl,
                    height: 245.h,
                    width: 184.w,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 12.h,
                  right: 23.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.h),
                    decoration: BoxDecoration(
                      color: ColorsManager.white,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: ColorsManager.primary, size: 12.sp),
                        SizedBox(width: 2.w),
                        Text(
                          rating.toString(),
                          style: TextStyle(
                            fontFamily: "Raleway",
                              color: ColorsManager.darkBlue,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),

            Text(
              title,
              style:TextStyles.font22DarkBold.copyWith(fontSize: 14.sp),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4.h),
            Text(
              genre,
              style:TextStyles.font14lightGrayMedium.copyWith(fontSize: 12.sp,color: ColorsManager.lightGray2),
            ),
          ],
        ),
      ),
    );
  }
}