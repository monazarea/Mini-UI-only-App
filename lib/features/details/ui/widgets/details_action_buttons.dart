// ملف: details_action_buttons.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsActionButtons extends StatelessWidget {
  const DetailsActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // نستخدم Padding لإضافة مسافات أفقية
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          // --- زر Preview ---
          Expanded(
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow, color: Colors.white),
              label: const Text('Preview', style: TextStyle(color: Colors.white)),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white54),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
                padding: EdgeInsets.symmetric(vertical: 16.h),
              ),
            ),
          ),
          SizedBox(width: 16.w),

          // --- زر Watch Now ---
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.visibility, color: Colors.white),
              label: const Text('Watch Now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF6B5B95), // اللون البنفسجي
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
                padding: EdgeInsets.symmetric(vertical: 16.h),
              ),
            ),
          ),
        ],
      ),
    );
  }
}