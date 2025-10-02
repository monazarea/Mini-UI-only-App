import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/core/theming/colors.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/theming/styles.dart';
import 'plan_card.dart';

class PlansAndButton extends StatefulWidget {
  const PlansAndButton({super.key});

  @override
  State<PlansAndButton> createState() => _PlansSectionState();
}

class _PlansSectionState extends State<PlansAndButton> {
  String selectedPlan = "Monthly";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanCard(
          title: "Monthly",
          price: "\$5 USD ",
          period: "/Month",
          description: "Include Family Sharing",
          isSelected: selectedPlan == "Monthly",
          onTap: () {
            setState(() {
              selectedPlan = "Monthly";
            });
          },
        ),
        SizedBox(height: 16.h,),
        PlanCard(
          title: "Annually",
          price: "\$50 USD ",
          period: "/Year",
          description: "Include Family Sharing",
          isSelected: selectedPlan == "Annually",
          onTap: () {
            setState(() {
              selectedPlan = "Annually";
            });
          },
        ),
        SizedBox(height: 37.h),
        Container(
          height: 46.h,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: ElevatedButton(
            onPressed: () {
              context.router.push(const HomeRoute());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
            child: Text(
              "Continue",
              style: TextStyles.font14lightPurpleBold.copyWith(
                fontSize: 16.sp,color: Colors.white
              ),
            ),
          ),
        ),
      ],
    );
  }
}
