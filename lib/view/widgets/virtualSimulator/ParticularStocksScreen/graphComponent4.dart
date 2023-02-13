import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:maze/view/widgets/virtualSimulator/ParticularStocksScreen/linechart.dart';
import 'package:sizer/sizer.dart';

// import 'lineChart.dart';

class GraphComponent4 extends StatelessWidget {
  const GraphComponent4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 60.w,
            height: 20.h,
            child: LineChartWidget(),
          ),
          Spacer(),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "1200",
                textAlign: TextAlign.center,
                style: AppFont.lightColorWhite_12,
              ),
              Text(
                "1000",
                textAlign: TextAlign.center,
                style: AppFont.lightColorWhite_12,
              ),
              Text(
                "800",
                textAlign: TextAlign.center,
                style: AppFont.lightColorWhite_12,
              ),
              Text(
                "400",
                textAlign: TextAlign.center,
                style: AppFont.lightColorWhite_12,
              ),
              Text(
                "200",
                textAlign: TextAlign.center,
                style: AppFont.lightColorWhite_12,
              ),
              Text(
                "100",
                textAlign: TextAlign.center,
                style: AppFont.lightColorWhite_12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
