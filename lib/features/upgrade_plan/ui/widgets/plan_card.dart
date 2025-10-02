import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PlanCard extends StatelessWidget {
  final String title;       // ex: "Monthly"
  final String price;// ex: "5 USD / Month"
  final String period;
  final String description; // ex: "Include Family Sharing"
  final bool isSelected;    // الحالة
  final VoidCallback onTap; // عشان نغير الاختيار

  const PlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.period,
    required this.description,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //height: 102.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        margin: EdgeInsets.symmetric(horizontal: 17.w),
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.darkBlue : Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          // border: Border.all(
          //   color: isSelected ? ColorsManager.darkBlue : Colors.grey.shade300,
          //   width: 2,
          // ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/cardImage.png",
              height: 108.h,
              width: 108.w,
            ),
            SizedBox(width: 22.w),
            Expanded(

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 21.h,),
                  Text(
                    title,
                    style: TextStyles.font22DarkBold.copyWith(
                      fontSize: 16.sp,
                      color: isSelected ? Colors.white : ColorsManager.darkBlue,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Text(
                        price,
                        style: TextStyles.font14lightPurpleBold.copyWith(
                          color: isSelected ? Colors.white : ColorsManager.darkBlue,
                        ),
                      ),
                      Text(
                        period,
                        style: TextStyles.font14lightPurpleBold
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    description,
                    style: TextStyles.font14lightPurpleBold.copyWith(
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 21.h),
              child: Container(
                width: 20.w,
                height: 20.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? ColorsManager.primary : ColorsManager.darkBlue,
                    width: 2,
                  ),
                  color: isSelected ? ColorsManager.primary : Colors.transparent,
                ),
                child: isSelected
                    ? Icon(Icons.check, weight: 1.5,size: 16.w, color: ColorsManager.darkBlue)
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
