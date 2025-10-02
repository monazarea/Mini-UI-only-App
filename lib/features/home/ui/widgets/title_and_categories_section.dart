import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/core/theming/colors.dart';
import 'package:mini_ui_design/core/theming/styles.dart';


class TitleAndCategoriesSection extends StatefulWidget {
  const TitleAndCategoriesSection({super.key});

  @override
  State<TitleAndCategoriesSection> createState() =>
      _TitleAndCategoriesSectionState();
}

class _TitleAndCategoriesSectionState extends State<TitleAndCategoriesSection> {
  final List<String> categories = [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Top'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Where Anime Comes Alive',
          style: TextStyles.font22DarkBold.copyWith(fontSize: 24.sp)
        ),
        SizedBox(height: 24.h),

        SizedBox(
          height: 30.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 6.h),
                  margin: EdgeInsets.only(right: 4.w),
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? ColorsManager.primary
                        : Colors.white,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Text(
                    categories[index],
                    style:TextStyles.font14lightPurpleBold.copyWith(
                      color: selectedIndex == index
                          ? ColorsManager.white
                          : ColorsManager.primary,
                    )
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}