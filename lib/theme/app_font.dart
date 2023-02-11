import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_dimens.dart';

import 'app_colors.dart';

class AppFont {
  //Google Poppins
  static var lightGoogleWhite = GoogleFonts.poppins(
    fontWeight: FontWeight.w300,
    fontSize: 9,
    color: AppColors.colorWhite,
  );
  static var regularGoogleGreen = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Color(0xff20c598),
  );
  static var regularGoogleWhite = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.colorWhite,
  );
  static var mediumGoogleWhite = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: AppColors.colorWhite,
  );

  //Google Roboto
  static final mediumBoldGoogleRoboto = GoogleFonts.roboto(
      fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.colorWhite);
  //Satoshi
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

  // light google white
  static final lightGoogleWhite_12 =
      lightGoogleWhite.copyWith(fontSize: Dimens.textSize12);
  static final lightGoogleWhite_10 =
      lightGoogleWhite.copyWith(fontSize: Dimens.textSize10);
  static final lightGoogleWhite_14 =
      lightGoogleWhite.copyWith(fontSize: Dimens.textSize14);

  //medium google
  static final mediumGoogleWhite_15 =
      mediumGoogleWhite.copyWith(fontSize: Dimens.textSize15);
  static final mediumGoogleWhite_16 =
      mediumGoogleWhite.copyWith(fontSize: Dimens.textSize16);

  //regular google white
  static final regularGoogleWhite_9 =
      regularGoogleWhite.copyWith(fontSize: Dimens.textSize9);
  static final regularGoogleWhite_10 =
      regularGoogleWhite.copyWith(fontSize: Dimens.textSize10);
  static final regularGoogleWhite_14 =
      regularGoogleWhite.copyWith(fontSize: Dimens.textSize14);

  /// Color White Light
  static final lightColorWhite_12 = light.copyWith(fontSize: Dimens.textSize12);
  static final lightColorgrey_10 =
      light.copyWith(fontSize: Dimens.textSize10, color: Color(0xffffffff));

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
  static final mediumBoldColorWhite_13 =
      mediumBold.copyWith(fontSize: Dimens.textSize13);
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
  static final mediumBoldColorGreen_15 = mediumBold.copyWith(
    fontSize: Dimens.textSize15,
    color: Color(0xff62EB56),
  );

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
  static final mediumBoldColorBlack =
      mediumBold.copyWith(color: AppColors.colorBlack);
  static final mediumBoldColorBlack_16 =
      mediumBoldColorBlack.copyWith(fontSize: Dimens.textSize16);

  /// Color Golden Medium
  static final mediumBoldColorGolden =
      mediumBold.copyWith(color: AppColors.colorGolden);
  static final mediumBoldColorGolden_27 =
      mediumBoldColorGolden.copyWith(fontSize: Dimens.textSize27);
  static final mediumBoldColorGolden_14 =
      mediumBoldColorGolden.copyWith(fontSize: Dimens.textSize14);

  /// Color Green Bold
  static final boldColorGreen = bold.copyWith(color: AppColors.colorGreen);
  static final boldColorGreen_22 =
      boldColorGreen.copyWith(fontSize: Dimens.textSize22);

  /// Color Grey Regular
  static final regularColorGrey1 =
      regular.copyWith(color: AppColors.colorGrey1);
  static final regularColorGrey1_13 =
      regularColorGrey1.copyWith(fontSize: Dimens.textSize13);
  static final regularColorGrey1_15 = regularColorGrey1.copyWith(
      fontSize: Dimens.textSize15, color: Color(0xffFFFFFF));

  /// Color Grey Medium
  static final mediumBoldColorGrey10 =
      mediumBold.copyWith(color: AppColors.colorGrey1);
  static final mediumBoldColorGrey10_15 =
      mediumBoldColorGrey10.copyWith(fontSize: Dimens.textSize15);
  static final mediumBoldColorGrey10_18 =
      mediumBoldColorGrey10.copyWith(fontSize: Dimens.textSize18);

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

  /// Color Grey8 Regular
  static final regularColorGrey8 =
      regular.copyWith(color: AppColors.colorGrey6);
  static final regularColorGrey8_12 =
      regularColorGrey8.copyWith(fontSize: Dimens.textSize12);

  /// Color LightBlue Medium
  static final mediumBoldColorLightBlue =
      mediumBold.copyWith(color: AppColors.colorLightBlue);
  static final mediumBoldColorLightBlue_17 =
      mediumBoldColorLightBlue.copyWith(fontSize: Dimens.textSize17);

  /// Color Red Medium
  static final mediumBoldColorRed =
      mediumBold.copyWith(color: AppColors.colorRed);
  static final mediumBoldColorRed_18 =
      mediumBoldColorRed.copyWith(fontSize: Dimens.textSize18);

  /// Color White SemiBold
  static final semiBoldColorWhite_15 =
      semiBold.copyWith(fontSize: Dimens.textSize15);
}
