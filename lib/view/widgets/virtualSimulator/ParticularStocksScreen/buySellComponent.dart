import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuySellComponent15 extends StatelessWidget {
  const BuySellComponent15({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            // width: 182,
            height: 51,
            decoration: BoxDecoration(
              color: Color(0xffB62828),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Sell",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: Container(
            // width: 182,
            height: 51,
            decoration: BoxDecoration(
              color: Color(0xff1ECB98),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Buy",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
