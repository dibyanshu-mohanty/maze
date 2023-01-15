import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_dimens.dart';
import '../../../theme/app_font.dart';



class AddPhotoField extends StatelessWidget {
  const AddPhotoField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    Center(
            child: Badge(
              badgeColor: AppColors.colorTransparent,
              elevation: 0,
              padding: EdgeInsets.only(bottom: Dimens.margin10,right: Dimens.margin10),
              position: BadgePosition.bottomEnd(),
              badgeContent: Container(
                width: 4.5.w,
                height: 4.5.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.colorGolden,
                ),
                alignment: Alignment.center,
                child: Icon(Icons.add_photo_alternate_outlined,color: AppColors.colorBlack,size: 2.5.w,),
              ),
              child: Container(
                width: 18.w,
                height: 18.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    border: Border.all(color: AppColors.colorWhite,width: 1.0)
                ),
                alignment: Alignment.center,
                child: const Icon(Icons.photo,color: AppColors.colorWhite,),
              ),
            ),
          ),
        SizedBox(height: Dimens.margin14),
        Text("Add Photo",style: AppFont.regularColorWhite_12),
      ],
    );
  }
}
