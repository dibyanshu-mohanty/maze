import 'package:flutter/material.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_colors.dart';


class PickGenderTile extends StatelessWidget {
  final String gender;
  const PickGenderTile({Key? key, required this.gender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 35.w,
        height: 40,
        alignment: Alignment.center,
        margin: const EdgeInsets.fromLTRB(0.0,10.0,6.0,14.0),
        // padding: const EdgeInsets.symmetric(vertical: Dimens.margin6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: AppColors.colorWhite, width: 1.0)
        ),
        child: Text(gender,style: AppFont.regularColorWhite_12,)
    );
  }
}
