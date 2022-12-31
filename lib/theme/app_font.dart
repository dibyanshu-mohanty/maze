import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppFont{
  static final regular = GoogleFonts.poppins(
      fontWeight: FontWeight.w400, color: AppColors.colorWhite);
  static final bold = GoogleFonts.poppins(
      fontWeight: FontWeight.w700, color: AppColors.colorWhite);
  static final semiBold = GoogleFonts.poppins(
      fontWeight: FontWeight.w600, color: AppColors.colorWhite);
  static final mediumBold = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, color: AppColors.colorWhite);


  /// Color White Regular
  static final regularColorWhite_20 = regular.copyWith(fontSize: 20.0);
  static final regularColorWhite_18 = regular.copyWith(fontSize: 18.0);


  /// Color White Medium Bold
  static final mediumBoldColorWhite_18 = mediumBold.copyWith(fontSize: 18.0);


  /// Color Golden Regular
  static final regularColorGolden = regular.copyWith(color: AppColors.colorGolden);
  static final regularColorGolden_20 = regularColorGolden.copyWith(fontSize: 20.0);
}