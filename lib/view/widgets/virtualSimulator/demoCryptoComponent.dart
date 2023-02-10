import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/app_font.dart';

class DemoCryptoComponent1 extends StatelessWidget {
  final title;
  final amount;
  final titleColor;
  final amountColor;
  const DemoCryptoComponent1(
      {super.key,
      this.title = "Portfolio Value",
      this.amount = "1,00,000",
      this.titleColor,
      this.amountColor = 0xffffffff});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFont.lightColorgrey_10,
        ),
        Text(
          "₹ $amount",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Color(amountColor),
          ),
        ),
      ],
    );
  }
}
