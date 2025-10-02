
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_ui_design/core/theming/colors.dart';

import '../../../../core/theming/styles.dart';
import '../../data/character_model.dart';

class TopCharactersSection extends StatelessWidget {
  const TopCharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CharacterModel> characters = [
      CharacterModel(
        imageUrl: 'assets/images/char5.png',
        name: 'Gon Freecss',
        anime: 'Hunter x Hunter',
      ),
      CharacterModel(
        imageUrl: 'assets/images/char1.png',
        name: 'Naruto Uzumaki',
        anime: 'Naruto',
      ),
      CharacterModel(
        imageUrl: 'assets/images/char3.png',
        name: 'Luffy',
        anime: 'One Piece',
      ),
      CharacterModel(
        imageUrl: 'assets/images/char4.png',
        name: 'Goku',
        anime: 'Dragon Ball',
      ),
      CharacterModel(
        imageUrl: 'assets/images/char2.png',
        name: 'Eren Yeager',
        anime: 'Attack on Titan',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Characters',
          style: TextStyles.font22DarkBold.copyWith(fontSize: 24.sp)
        ),
        SizedBox(height: 24.h),

        SizedBox(
          height: 143.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: characters.length,
            itemBuilder: (context, index) {
              final character = characters[index];
              return _CharacterAvatar(character: character);
            },
          ),
        ),
      ],
    );
  }
}


class _CharacterAvatar extends StatelessWidget {
  final CharacterModel character;

  const _CharacterAvatar({required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108.w,
      margin: EdgeInsets.only(right: 12.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 46.r,
            backgroundImage: AssetImage(character.imageUrl),
          ),
          SizedBox(height: 10.h),
          Text(
            character.name,
            style: TextStyles.font22DarkBold.copyWith(fontSize: 15)
          ),
          SizedBox(height: 6.h),
          Text(
            character.anime,
            style: TextStyles.font14lightGrayMedium.copyWith(color: ColorsManager.anotherLightGray,
            fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}