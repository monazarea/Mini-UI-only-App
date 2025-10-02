import 'package:auto_route/auto_route.dart'; // Add this import
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/features/upgrade_plan/ui/widgets/background.dart';
import 'package:mini_ui_design/features/upgrade_plan/ui/widgets/header_and_texts.dart';
import 'package:mini_ui_design/features/upgrade_plan/ui/widgets/plans_and_button.dart';

@RoutePage() // <-- This is the crucial missing annotation
class UpgradePlanScreen extends StatelessWidget {
  const UpgradePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Background(),
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 67.h),
                    child: HeaderAndTexts(),
                  ),
                ),
                SizedBox(height: 39.h,),
                PlansAndButton(),
              ],
            ),
          ],
        )
      ),
    );
  }
}