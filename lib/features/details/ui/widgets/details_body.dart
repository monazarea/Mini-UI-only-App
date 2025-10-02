import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/styles.dart';
import 'details_action_buttons.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 40.0),
          child: Container(color: Colors.black.withOpacity(0.4)),
        ),

        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x802E1A47), Color(0x804D2C91)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          //padding: EdgeInsets.symmetric(horizontal: 0.w),
          child: Column(
            children: [
              // مسافة علوية لإفساح المجال للوجو
              SizedBox(height: 160.h),

              // ... باقي المحتوى لم يتغير ...
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _GenreTag(label: 'Dark Fantasy'),
                  _GenreTag(label: 'Action'),
                  _GenreTag(label: 'Adventure'),
                ],
              ),
              SizedBox(height:20.h),
              Divider(
                color: Colors.white.withOpacity(0.2),
                thickness: 1,
                indent: 17.w,
                endIndent: 17.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.0.w,vertical: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _InfoItem(icon: Icons.visibility, text: '2.3M views'),
                    _InfoItem(icon: Icons.thumb_up, text: '2K clap'),
                    _InfoItem(icon: Icons.video_library, text: '4 Seasons'),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'A tale of courage, family, and fierce battles',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 14.sp),
              ),
              SizedBox(height: 24.h),
              const DetailsActionButtons(),
              SizedBox(height: 34.h),
            ],
          ),
        ),
      ],
    );
  }
}



class _GenreTag extends StatelessWidget {
  final String label;
  const _GenreTag({required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(17.r),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 5.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(child: Text(label, style: TextStyles.font22DarkBold.copyWith(color: Colors.white, fontSize: 11.sp,fontWeight: FontWeight.w500))),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const _InfoItem({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white70, size: 16.sp),
        SizedBox(width: 6.w),
        Text(text, style: TextStyle(color: Colors.white70, fontSize: 12.sp)),
      ],
    );
  }
}
