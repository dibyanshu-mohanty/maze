import 'package:flutter/material.dart';
import 'package:maze/theme/coreimport.dart';

class ProfileDetailsTile extends StatelessWidget {
  final String profileDetailsTitle;
  final IconData profileDetailsIcon;
  const ProfileDetailsTile({super.key, required this.profileDetailsTitle, required this.profileDetailsIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Dimens.margin8,vertical: Dimens.margin9),
      child: ListTile(
        leading: Container(
          width: 12.w,
          height: 12.w,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.colorGolden,
          ),
          child: Icon(
            profileDetailsIcon,
            color: Colors.white,
          ),
        ),
        title: Text(
          profileDetailsTitle,
          style: AppFont.regularColorWhite_18,
        ),
      ),
    );
  }
}
