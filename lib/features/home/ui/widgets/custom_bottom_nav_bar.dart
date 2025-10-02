// ملف: custom_bottom_nav_bar.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart'; // <-- 1. استيراد الحزمة الجديدة

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart'; // تأكدي من أن مسار الألوان صحيح

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  // 2. قائمة منظمة لبيانات الأيقونات
  final List<Map<String, String>> _navItems = [
    {'icon': 'assets/svgs/home.svg', 'label': 'Home'},
    {'icon': 'assets/svgs/library.svg', 'label': 'Library'},
    {'icon': 'assets/svgs/search.svg', 'label': 'Search'},
    {'icon': 'assets/svgs/discover.svg', 'label': 'Discover'},
    {'icon': 'assets/svgs/setting.svg', 'label': 'Setting'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98.h,
      decoration: const BoxDecoration(
        color: ColorsManager.white, // يمكنك تغيير هذا اللون ليتناسب مع تصميمك
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _navItems.asMap().entries.map((entry) {
          int index = entry.key;
          Map<String, String> item = entry.value;
          return _buildNavItem(
            svgPath: item['icon']!,
            label: item['label']!,
            index: index,
          );
        }).toList(),
      ),
    );
  }

  // 3. تعديل الودجت المساعدة لتستقبل مسار SVG
  Widget _buildNavItem({
    required String svgPath,
    required String label,
    required int index,
  }) {
    final bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: AnimatedContainer(
        height: 34.h,
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(horizontal: isSelected ? 16.w : 8.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              svgPath,
              width: 20.w,
              height: 20.h,
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.white : ColorsManager.lightGray,
                BlendMode.srcIn,
              ),
            ),
            if (isSelected) SizedBox(width: 7.w),
            if (isSelected)
              Text(
                label,
                style: TextStyles.font14lightPurpleBold.copyWith(fontWeight: FontWeight.w600,color: ColorsManager.white,)
              )
          ],
        ),
      ),
    );
  }
}