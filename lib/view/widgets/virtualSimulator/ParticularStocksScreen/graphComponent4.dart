import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/view/widgets/virtualSimulator/ParticularStocksScreen/linechart.dart';

// import 'lineChart.dart';

class GraphComponent4 extends StatelessWidget {
  const GraphComponent4({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 300,
          height: 200,
          child: LineChartWidget(),
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            SizedBox(
              height: 18,
            ),
            Text(
              "1200",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Color(0xffffffff),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "1000",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Color(0xffffffff),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "800",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Color(0xffffffff),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "400",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Color(0xffffffff),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "200",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Color(0xffffffff),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "100",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Color(0xffffffff),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
