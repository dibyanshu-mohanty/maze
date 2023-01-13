import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_dimens.dart';

import 'app_colors.dart';

class AppFont{
  static const regular = TextStyle( fontFamily: 'Satoshi',
      fontWeight: FontWeight.w400, color: AppColors.colorWhite);
  static const bold = TextStyle(  fontFamily: 'Satoshi',
      fontWeight: FontWeight.w700, color: AppColors.colorWhite);
  static const semiBold = TextStyle(  fontFamily: 'Satoshi',
      fontWeight: FontWeight.w600, color: AppColors.colorWhite);
  static const mediumBold = TextStyle(  fontFamily: 'Satoshi',
      fontWeight: FontWeight.w500, color: AppColors.colorWhite);


  /// Color White Regular
  static final regularColorWhite_20 = regular.copyWith(fontSize: Dimens.textSize20);
  static final regularColorWhite_18 = regular.copyWith(fontSize: Dimens.textSize18);
  static final regularColorWhite_12 = regular.copyWith(fontSize: Dimens.textSize12);
  static final regularColorWhite_14 = regular.copyWith(fontSize: Dimens.textSize14);
  static final regularColorWhite_15 = regular.copyWith(fontSize: Dimens.textSize15);
  static final regularColorWhite_13 = regular.copyWith(fontSize: Dimens.textSize13);


  /// Color White Medium Bold
  static final mediumBoldColorWhite_12 = mediumBold.copyWith(fontSize: Dimens.textSize12);
  static final mediumBoldColorWhite_15 = mediumBold.copyWith(fontSize: Dimens.textSize15);
  static final mediumBoldColorWhite_18 = mediumBold.copyWith(fontSize: Dimens.textSize18);
  static final mediumBoldColorWhite_20 = mediumBold.copyWith(fontSize: Dimens.textSize20);
  static final mediumBoldColorWhite_25 = mediumBold.copyWith(fontSize: Dimens.textSize25);
  static final mediumBoldColorWhite_14 = mediumBold.copyWith(fontSize: Dimens.textSize14);


  /// Color Golden Regular
  static final regularColorGolden = regular.copyWith(color: AppColors.colorGolden);
  static final regularColorGolden_20 = regularColorGolden.copyWith(fontSize: Dimens.textSize20);

  /// Color Black Regular
  static final regularColorBlack = regular.copyWith(color: AppColors.colorBlack);
  static final regularColorBlack_18 = regularColorBlack.copyWith(fontSize: Dimens.textSize18);

  /// Color Green Bold
  static final boldColorGreen = bold.copyWith(color: AppColors.colorGreen);
  static final boldColorGreen_22 = boldColorGreen.copyWith(fontSize: Dimens.textSize22);

  /// Color Grey Regular
  static final regularColorGrey1 = regular.copyWith(color: AppColors.colorGrey1);
  static final regularColorGrey1_13 = regularColorGrey1.copyWith(fontSize: Dimens.textSize13);

  /// Color Grey Medium
  static final mediumBoldColorGrey1 = mediumBold.copyWith(color: AppColors.colorGrey1);
  static final mediumBoldColorGrey1_15 = mediumBoldColorGrey1.copyWith(fontSize: Dimens.textSize15);
  static final mediumBoldColorGrey1_18 = mediumBoldColorGrey1.copyWith(fontSize: Dimens.textSize18);

  /// Color Grey4 Regular
  static final regularColorGrey4 = regular.copyWith(color: AppColors.colorGrey4);
  static final regularColorGrey4_10 = regularColorGrey4.copyWith(fontSize: Dimens.textSize10);
  static final regularColorGrey4_12 = regularColorGrey4.copyWith(fontSize: Dimens.textSize12);

  /// Color Grey6 Regular
  static final regularColorGrey6 = regular.copyWith(color: AppColors.colorGrey6);
  static final regularColorGrey6_10 = regularColorGrey6.copyWith(fontSize: Dimens.textSize10);

  /// Color LightBlue Medium
  static final mediumBoldColorLightBlue = mediumBold.copyWith(color: AppColors.colorLightBlue);
  static final mediumBoldColorLightBlue_17 = mediumBoldColorLightBlue.copyWith(fontSize: Dimens.textSize17);

  /// Color Red Medium
  static final mediumBoldColorRed = mediumBold.copyWith(color: AppColors.colorRed);
  static final mediumBoldColorRed_18 = mediumBoldColorRed.copyWith(fontSize: Dimens.textSize18);
 }