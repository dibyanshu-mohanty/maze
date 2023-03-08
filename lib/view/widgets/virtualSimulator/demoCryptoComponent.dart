import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/app_font.dart';

class DemoCryptoComponent1 extends StatelessWidget {
  final String title;
  final double amount;
  final TextStyle amountStyle;
  const DemoCryptoComponent1(
      {super.key,
      this.title = "Portfolio Value",
      this.amount = 10.00,
      required this.amountStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFont.lightColorWhite_12,
        ),
        Text(
          "\u{20B9} ${amount.toStringAsFixed(2)}",
          style: amountStyle,
        ),
      ],
    );
  }
}
