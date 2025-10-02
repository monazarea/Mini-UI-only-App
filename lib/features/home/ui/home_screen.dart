import 'package:auto_route/auto_route.dart'; // Add this import
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/features/home/ui/widgets/anime_posters_section.dart';
import 'package:mini_ui_design/features/home/ui/widgets/custom_bottom_nav_bar.dart';
import 'package:mini_ui_design/features/home/ui/widgets/home_background.dart';
import 'package:mini_ui_design/features/home/ui/widgets/title_and_categories_section.dart';
import 'package:mini_ui_design/features/home/ui/widgets/top_characters_section.dart';

@RoutePage() // <-- This is the crucial missing annotation
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: Center(
        child: Stack(
          children: [
            HomeBackground(),
            Padding(
              padding: EdgeInsets.only(left: 14.w),
              child: Column(
                children: [
                  SizedBox(height: 67.h,),
                  TitleAndCategoriesSection(),
                  SizedBox(height: 20.h),
                  AnimePostersSection(),
                  SizedBox(height: 24.h,),
                  TopCharactersSection(),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}