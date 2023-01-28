import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_sizers.dart';

import '../appscreenbackgroundshape.dart';

class HomeScreenBackground extends StatelessWidget {
  const HomeScreenBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorBlack,
      child: Stack(
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppSizers.height40,
                BackgroundShape(
                  color: AppColors.colorGolden,
                ),
              ]),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
            child: Container(
              decoration:
                  BoxDecoration(color: AppColors.colorBlack.withOpacity(0.65)),
            ),
          ),
        ],
      ),
    );
  }
}
