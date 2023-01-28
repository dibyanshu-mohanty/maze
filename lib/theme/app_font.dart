import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_dimens.dart';

import 'app_colors.dart';

class AppFont {
  static const light = TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w300,
      color: AppColors.colorWhite);
  static const regular = TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w400,
      color: AppColors.colorWhite);
  static const bold = TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w700,
      color: AppColors.colorWhite);
  static const semiBold = TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w600,
      color: AppColors.colorWhite);
  static const mediumBold = TextStyle(
      fontFamily: 'Satoshi',
      fontWeight: FontWeight.w500,
      color: AppColors.colorWhite);

  /// Color White Light
  static final lightColorWhite_12 = light.copyWith(fontSize: Dimens.textSize12);

  /// Color White Regular
  static final regularColorWhite_20 =
      regular.copyWith(fontSize: Dimens.textSize20);
  static final regularColorWhite_18 =
      regular.copyWith(fontSize: Dimens.textSize18);
  static final regularColorWhite_12 =
      regular.copyWith(fontSize: Dimens.textSize12);
  static final regularColorWhite_14 =
      regular.copyWith(fontSize: Dimens.textSize14);
  static final regularColorWhite_15 =
      regular.copyWith(fontSize: Dimens.textSize15);
  static final regularColorWhite_13 =
      regular.copyWith(fontSize: Dimens.textSize13);

  /// Color White Medium Bold
  static final mediumBoldColorWhite_12 =
      mediumBold.copyWith(fontSize: Dimens.textSize12);
  static final mediumBoldColorWhite_15 =
      mediumBold.copyWith(fontSize: Dimens.textSize15);
  static final mediumBoldColorWhite_18 =
      mediumBold.copyWith(fontSize: Dimens.textSize18);
  static final mediumBoldColorWhite_20 =
      mediumBold.copyWith(fontSize: Dimens.textSize20);
  static final mediumBoldColorWhite_25 =
      mediumBold.copyWith(fontSize: Dimens.textSize25);
  static final mediumBoldColorWhite_27 =
      mediumBold.copyWith(fontSize: Dimens.textSize27);
  static final mediumBoldColorWhite_14 =
      mediumBold.copyWith(fontSize: Dimens.textSize14);
  static final mediumBoldColorWhite_13 =
      mediumBold.copyWith(fontSize: Dimens.textSize13);

  ///Color White Bold
  static final boldColorWhite_15 = bold.copyWith(fontSize: Dimens.textSize15);

  /// Color Golden Regular
  static final regularColorGolden =
      regular.copyWith(color: AppColors.colorGolden);
  static final regularColorGolden_20 =
      regularColorGolden.copyWith(fontSize: Dimens.textSize20);

  /// Color Black Regular
  static final regularColorBlack =
      regular.copyWith(color: AppColors.colorBlack);
  static final regularColorBlack_18 =
      regularColorBlack.copyWith(fontSize: Dimens.textSize18);

  /// Color Black Bold
  static final boldColorBlack = bold.copyWith(color: AppColors.colorBlack);
  static final boldColorBlack_20 =
      boldColorBlack.copyWith(fontSize: Dimens.textSize20);

  /// Color Black Medium
  static final mediumBoldColorBlack  = mediumBold.copyWith(color: AppColors.colorBlack);
  static final mediumBoldColorBlack_16 = mediumBoldColorBlack.copyWith(fontSize: Dimens.textSize16);

  /// Color Golden Medium

  static final mediumBoldColorGolden =
      mediumBold.copyWith(color: AppColors.colorGolden);
  static final mediumBoldColorGolden_27 =
      mediumBoldColorGolden.copyWith(fontSize: Dimens.textSize27);

  static final mediumBoldColorGolden  = mediumBold.copyWith(color: AppColors.colorGolden);
  static final mediumBoldColorGolden_27 = mediumBoldColorGolden.copyWith(fontSize: Dimens.textSize27);
  static final mediumBoldColorGolden_14 = mediumBoldColorGolden.copyWith(fontSize: Dimens.textSize14);


  /// Color Green Bold
  static final boldColorGreen = bold.copyWith(color: AppColors.colorGreen);
  static final boldColorGreen_22 =
      boldColorGreen.copyWith(fontSize: Dimens.textSize22);

  /// Color Grey Regular
  static final regularColorGrey1 =
      regular.copyWith(color: AppColors.colorGrey1);
  static final regularColorGrey1_13 =
      regularColorGrey1.copyWith(fontSize: Dimens.textSize13);

  /// Color Grey Medium

  static final mediumBoldColorGrey1 =
      mediumBold.copyWith(color: AppColors.colorGrey1);
  static final mediumBoldColorGrey1_15 =
      mediumBoldColorGrey1.copyWith(fontSize: Dimens.textSize15);
  static final mediumBoldColorGrey1_18 =
      mediumBoldColorGrey1.copyWith(fontSize: Dimens.textSize18);

  static final mediumBoldColorGrey10 = mediumBold.copyWith(color: AppColors.colorGrey1);
  static final mediumBoldColorGrey10_15 = mediumBoldColorGrey10.copyWith(fontSize: Dimens.textSize15);
  static final mediumBoldColorGrey10_18 = mediumBoldColorGrey10.copyWith(fontSize: Dimens.textSize18);


  /// Color Grey4 Regular
  static final regularColorGrey4 =
      regular.copyWith(color: AppColors.colorGrey4);
  static final regularColorGrey4_10 =
      regularColorGrey4.copyWith(fontSize: Dimens.textSize10);
  static final regularColorGrey4_12 =
      regularColorGrey4.copyWith(fontSize: Dimens.textSize12);

  /// Color Grey6 Regular
  static final regularColorGrey6 =
      regular.copyWith(color: AppColors.colorGrey6);
  static final regularColorGrey6_10 =
      regularColorGrey6.copyWith(fontSize: Dimens.textSize10);
  static final regularColorGrey6_15 =
      regularColorGrey6.copyWith(fontSize: Dimens.textSize15);

  /// Color Grey8 Regular
  static final regularColorGrey8 = regular.copyWith(color: AppColors.colorGrey6);
  static final regularColorGrey8_12 = regularColorGrey8.copyWith(fontSize: Dimens.textSize12);

  /// Color LightBlue Medium
  static final mediumBoldColorLightBlue =
      mediumBold.copyWith(color: AppColors.colorLightBlue);
  static final mediumBoldColorLightBlue_17 =
      mediumBoldColorLightBlue.copyWith(fontSize: Dimens.textSize17);

  ///Color Blue MediumBold
  static final mediumBoldColorBlue =
      mediumBold.copyWith(color: Color(0xFF449BEA));
  static final mediumBoldColorBlue_18 =
      mediumBoldColorBlue.copyWith(fontSize: Dimens.textSize18);

  ///Color Blue Regular
  static final regularColorBlue = regular.copyWith(color: Color(0xFF449BEA));
  static final regularColorBlue_12 =
      regularColorBlue.copyWith(fontSize: Dimens.textSize12);

  /// Color Red Medium
  static final mediumBoldColorRed =
      mediumBold.copyWith(color: AppColors.colorRed);
  static final mediumBoldColorRed_18 =
      mediumBoldColorRed.copyWith(fontSize: Dimens.textSize18);
}
  static final mediumBoldColorRed = mediumBold.copyWith(color: AppColors.colorRed);
  static final mediumBoldColorRed_18 = mediumBoldColorRed.copyWith(fontSize: Dimens.textSize18);


  /// Color White SemiBold
  static final semiBoldColorWhite_15 = semiBold.copyWith(fontSize: Dimens.textSize15);
 }
