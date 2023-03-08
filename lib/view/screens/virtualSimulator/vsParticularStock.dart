import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_font.dart';
import 'package:maze/theme/app_sizers.dart';
import 'package:maze/view/screens/virtualSimulator/vsAppScreenBackground.dart';
import 'package:maze/view/widgets/virtualSimulator/ParticularStocksScreen/stockchart.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../controller/providers/virtualSimulator/tickerdataprovider.dart';
import '../../../theme/app_dimens.dart';
import '../../utils/baseappbar.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/buySellComponent.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/highLowComponent.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/productStockComponent.dart';
import '../../widgets/virtualSimulator/ParticularStocksScreen/opvcomponent.dart';

class VsParticularStock extends StatelessWidget {
  VsParticularStock({super.key});

  double value1 = 20;
  double value2 = 30;

  @override
  Widget build(BuildContext context) {
    final tickerData =
        ModalRoute.of(context)!.settings.arguments as List<String> ?? [];
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder(
          future: Provider.of<TickerDataProvider>(context, listen: false)
              .getTickerDetails(context, tickerData[0]),
          builder: (context, snapshot) {
            return snapshot.connectionState == ConnectionState.waiting
                ? const Center(
                    child: SpinKitFadingCircle(
                      color: AppColors.colorWhite,
                    ),
                  )
                : Consumer<TickerDataProvider>(
                    child: Center(
                      child: Text(
                        "Couldn't fetch data",
                        style: AppFont.boldColorWhite_20,
                      ),
                    ),
                    builder: (context, availTickerData, child) =>
                        Stack(
                                children: [
                                  const VsAppScreenBackground(),
                                  availTickerData.tickerDetails.name.isEmpty
                                      ? child!
                                      : ListView(
                                    children: [
                                      BaseAppBar(
                                        title: "Stock Detail",
                                        appBar: AppBar(),
                                        mLeftAction: Navigator.of(context).pop,
                                      ),
                                      ProductStockComponent(
                                        stockName:
                                            availTickerData.tickerDetails.name,
                                        currentPrice:
                                            availTickerData.tickerDetails.price,
                                      ), //done
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      StockChart(
                                        graphData: availTickerData
                                            .tickerDetails.graphData,
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: Dimens.margin12,
                                            horizontal: Dimens.margin20),
                                        child: Text(
                                          "Performance",
                                          textAlign: TextAlign.start,
                                          style: AppFont.regularColorWhite_15,
                                        ),
                                      ),
                                      HighLowComponent(
                                        high: availTickerData
                                            .tickerDetails.graphData[0].high,
                                        low: availTickerData
                                            .tickerDetails.graphData[0].low,
                                      ),
                                      Container(
                                        height: 1.h,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.h),
                                        child: Slider(
                                          value: (availTickerData
                                                      .tickerDetails.price /
                                                  availTickerData.tickerDetails
                                                      .graphData[0].high) *
                                              100,
                                          max: 100,
                                          label: value1.round().toString(),
                                          onChanged: (double val) {},
                                          thumbColor: AppColors.colorGolden,
                                          activeColor: AppColors.colorDarkGreen,
                                          inactiveColor:
                                              AppColors.colorDarkGreen,
                                        ),
                                      ),
                                      AppSizers.height40,
                                      Container(
                                        height: 1.h,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 1.h),
                                        child: Slider(
                                          value: value2,
                                          max: 100,
                                          label: value2.round().toString(),
                                          onChanged: (double val) {},
                                          thumbColor: AppColors.colorGolden,
                                          activeColor: AppColors.colorDarkGreen,
                                          inactiveColor:
                                              AppColors.colorDarkGreen,
                                        ),
                                      ),
                                      OpenCloseVolumeComponent(
                                        open: availTickerData
                                            .tickerDetails.graphData[0].open,
                                        close: availTickerData
                                            .tickerDetails.graphData[0].close,
                                        volume: availTickerData
                                            .tickerDetails.graphData[0].volume,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                    ],
                                  ),
                                  availTickerData.tickerDetails.name.isEmpty
                                      ? const SizedBox()
                                      : BuySellComponent(
                                    tourneyId: tickerData[1],
                                    stockName:
                                        availTickerData.tickerDetails.ticker,
                                    currentPrice:
                                        availTickerData.tickerDetails.price,
                                  ),
                                ],
                              ));
          }),
    );
  }
}
