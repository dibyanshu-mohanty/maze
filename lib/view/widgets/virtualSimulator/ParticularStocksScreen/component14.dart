import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Component14 extends StatelessWidget {
  const Component14({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 45),
      child: Text(
        "Fudamental",
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: Color(0xffffffff),
        ),
      ),
    );
  }
}
