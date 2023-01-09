import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_dimens.dart';
import '../../../theme/app_font.dart';


class DetailsTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintTextTitle;
  final IconData prefixIcon;
  const DetailsTextField({Key? key, required this.controller, required this.hintTextTitle, required this.prefixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.w,
        height: 40,
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(0.0,10.0,6.0,14.0),
        padding: const EdgeInsets.symmetric(vertical: Dimens.margin6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: AppColors.colorWhite, width: 1.0)
        ),
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.center,
          controller: controller,
          cursorHeight: 18.0,
          style: AppFont.regularColorWhite_18.copyWith(letterSpacing: 0.1),
          onChanged: (value){
          },
          cursorColor: AppColors.colorWhite,
          cursorWidth: 0.5,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(prefixIcon,color: AppColors.colorWhite,),
            hintText: hintTextTitle,
            hintStyle: AppFont.regularColorWhite_14,
          ),
        )
    );
  }
}
