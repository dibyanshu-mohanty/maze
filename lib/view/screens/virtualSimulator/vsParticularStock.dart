import 'package:flutter/material.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:sizer/sizer.dart';

import '../../utils/baseappbar.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/buySellComponent.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/component10.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/component11.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/component14.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/component7.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/graphBottomRowComponent5.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/graphComponent4.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/graphUpperRowComponent.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/performanceComponent6.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/productStockComponent.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/stockDetailComponent13.dart';

class VsParticularStock extends StatefulWidget {
  const VsParticularStock({super.key});

  @override
  State<VsParticularStock> createState() => _VsParticularStockState();
}

class _VsParticularStockState extends State<VsParticularStock> {
  double value1 = 20;
  double value2 = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            BaseAppBar(
              title: "Stock Detail",
              appBar: AppBar(),
              mLeftAction: Navigator.of(context).pop,
            ),
            //............................................ProductStock Component 2nd.............................................................//
            const ProductStockComponent(),
            SizedBox(
              height: 1.h,
            ),
            //............................................GraphUpperRow Component 3rd...........................//
            const GraphUpperRowComponent3(),

            //.................................................Graph Component 4..............................//
            const GraphComponent4(),
            //.........................................GraphBottomRow Component 5...................................//
            const GraphBottomRowComponent5(),
            const SizedBox(
              height: 42,
            ),
            //.........................................Component 6....................................//
            const Component6(),

            //..............................................Component 7................................//
            const Component7(
              firstVal: "Today’s Low",
              secondVal: "Today’s High",
            ),
            //....................................Component 8 ---------------->  Varient of Component 7....................//
            const Component7(
              firstVal: "480.00",
              secondVal: "1490.87",
            ),

            //..............................................Component 9...........................................//
            Slider(
              value: value1,
              max: 100,
              label: value1.round().toString(),
              onChanged: (double val) {
                setState(() {
                  value1 = val;
                });
              },
              thumbColor: AppColors.colorGolden,
              activeColor: AppColors.colorDarkGreen,
              inactiveColor: AppColors.colorDarkGreen,
            ),

            //..............................................Component 10...........................................//
            const Component10(),
            //..............................................Component 11...........................................//

            const Component11(),
            //............................................Component  12............................................//
            Slider(
              value: value2,
              max: 100,
              label: value2.round().toString(),
              onChanged: (double val) {
                setState(() {
                  value2 = val;
                });
              },
              thumbColor: AppColors.colorGolden,
              activeColor: AppColors.colorDarkGreen,
              inactiveColor: AppColors.colorDarkGreen,
            ),
            //............................................StockDetail Component  13............................................//
            const StockDetailComponent13(),
            //...........................................Component  14...............................................//
            const Component14(),
            //..............................................BuySell Component 15..............................................//
            const BuySellComponent15(),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
