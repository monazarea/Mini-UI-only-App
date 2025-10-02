// ملف: details_screen.dart (النسخة النهائية مع التمرير الكامل)

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/features/details/ui/widgets/details_body.dart';
import 'widgets/details_header.dart';

@RoutePage()
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // لون الخلفية يظهر إذا تم التمرير لأبعد من المحتوى
      backgroundColor: const Color(0xFF1A1A2E),
      // نستخدم SingleChildScrollView كأب لكل الشاشة
      body: SingleChildScrollView(
        // نجعل الـ Stack هو الابن الوحيد للقائمة القابلة للتمرير
        child: Stack(
          children: [
            // --- الطبقة السفلية: الجسم ---
            Padding(
              padding: EdgeInsets.only(top: 519.h - 74.h), // (ارتفاع الصورة) - (نصف ارتفاع اللوجو)
              child: const DetailsBody(),
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: DetailsHeader(),
            ),
          ],
        ),
      ),
    );
  }
}