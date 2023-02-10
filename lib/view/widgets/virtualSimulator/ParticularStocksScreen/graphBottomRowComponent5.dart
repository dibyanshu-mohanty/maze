import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphBottomRowComponent5 extends StatelessWidget {
  const GraphBottomRowComponent5({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 21,
        ),
        Text(
          "10 Am",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Color(0xffffffff)),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          "12 Pm",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            fontSize: 12,
            color: Color(0xffffffff),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          "02 Pm",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Color(0xffffffff)),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          "04 Pm",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Color(0xffffffff)),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          "06 Pm",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Color(0xffffffff)),
        ),
      ],
    );
  }
}
