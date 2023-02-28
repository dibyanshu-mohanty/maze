import 'package:flutter/material.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_font.dart';
import 'package:maze/view/screens/virtualSimulator/vsAppScreenBackground.dart';
import 'package:sizer/sizer.dart';

import '../../utils/baseappbar.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/buySellComponent.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/hightestValueStock.dart';

// import '../../widgets/virtualSimulator/ParticularStocksScreen/component14.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/twoRowComponent.dart';
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
      body: Stack(
        children: [
          const VsAppScreenBackground(),
          ListView(
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
              const ProductStockComponent(), //done
              SizedBox(
                height: 1.h,
              ),
              const GraphUpperRowComponent3(),
              const Component6(),
              const TwoRowComponent(
                firstVal: "480.00",
                secondVal: "1490.87",
              ),
              Container(
                height: 1.h,
                margin: EdgeInsets.symmetric(vertical: 1.h),
                child: Slider(
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
              ),
              const HighestValueStock(),
              Container(
                height: 1.h,
                margin: EdgeInsets.symmetric(vertical: 1.h),
                child: Slider(
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
              ),
              const StockDetailComponent13(),
              Container(
                margin: EdgeInsets.only(left: 20, top: 45),
                child: Text(
                  "Fudamental",
                  style: AppFont.regularColorWhite_15,
                ),
              ),
            ],
          ),
          const BuySellComponent15(),
        ],
      ),
    );
  }
}
