import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class GraphUpperRowComponent3 extends StatelessWidget {
  const GraphUpperRowComponent3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 2.w,
        ),
        Text(
          "NSE",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Color(0xffFFC371)),
        ),
        SizedBox(
          width: 21,
        ),
        Container(
          width: 58,
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xffFFC371),
          ),
          // ignore: sort_child_properties_last
          child: Center(
            child: Text(
              "1D",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 22,
        ),
        Text(
          "1W",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Color(0xffffffff)),
        ),
        SizedBox(
          width: 45,
        ),
        Text(
          "1M",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Color(0xffffffff)),
        ),
        SizedBox(
          width: 45,
        ),
        Text(
          "1Y",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Color(0xffffffff)),
        ),
        SizedBox(
          width: 45,
        ),
        Text(
          "3Y",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Color(0xffffffff)),
        ),
      ],
    );
  }
}
