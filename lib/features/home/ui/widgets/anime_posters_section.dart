import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'anime_card.dart';
class AnimePostersSection extends StatelessWidget {
  AnimePostersSection({super.key});
  List<String> animeImages=[
    "assets/images/anime1.png",
    "assets/images/anime3.png",
    "assets/images/anime2.png",
  ];
  Map<String,String>animeTitleAndType={
    "Detective Conan":"Mystery",
    "Hunter x Hunter":"Adventure",
    "Dragon Ball":"Mystery",
  };

  @override
  Widget build(BuildContext context) {
    final List<String> titles = animeTitleAndType.keys.toList();
    final List<String> genres = animeTitleAndType.values.toList();
    return SizedBox(
      height: 287.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: animeImages.length,
        //padding: EdgeInsets.symmetric(horizontal: 14.w),
        itemBuilder: (context, index) {
          return AnimeCard(
            imageUrl: animeImages[index],
            title: titles[index],
            genre: genres[index],
            rating: 5.0,
          );
        },
      ),
    );
  }
}

