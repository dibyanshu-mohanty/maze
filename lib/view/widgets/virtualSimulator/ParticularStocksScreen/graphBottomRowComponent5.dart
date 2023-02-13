import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_font.dart';

class GraphBottomRowComponent5 extends StatelessWidget {
  const GraphBottomRowComponent5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "10 Am",
            style: AppFont.mediumBoldColorWhite_13,
          ),
          Text(
            "12 Pm",
            textAlign: TextAlign.center,
            style: AppFont.mediumBoldColorWhite_13,
          ),
          Text(
            "02 Pm",
            style: AppFont.mediumBoldColorWhite_13,
          ),
          Text(
            "04 Pm",
            style: AppFont.mediumBoldColorWhite_13,
          ),
          Text(
            "06 Pm",
            style: AppFont.mediumBoldColorWhite_13,
          ),
        ],
      ),
    );
  }
}
