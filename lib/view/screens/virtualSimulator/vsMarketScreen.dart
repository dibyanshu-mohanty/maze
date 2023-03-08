import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:maze/controller/providers/virtualSimulator/tickerdataprovider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../controller/providers/virtualSimulator/userAllTournmentsProvider.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_font.dart';
import '../../widgets/virtualSimulator/ShareStockComponentPortFolioScreen.dart';
import '../../widgets/virtualSimulator/virtualSimulatorComponent2.dart';
import '../../widgets/virtualSimulator/virtualSimulatorComponent3.dart';
// import '../../widgets/virtualSimulator/virtualSimulatorScreenComponent1.dart';
import '../../widgets/virtualSimulator/vsStartupComponent.dart';
import 'vsAppScreenBackground.dart';

class VsMarketScreen extends StatelessWidget {
  final String tourneyId;
  const VsMarketScreen({super.key, this.tourneyId = ""});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<TickerDataProvider>(context,listen:false).availableTickersData(context),
      builder: (context,snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return SpinKitFadingCircle(
            color: AppColors.colorWhite,
            size: 10.w,
          );
        }
        return Stack(
                children: [
                  const VsAppScreenBackground(),
                  ListView(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Text(
                              "This Week Trending",
                              style: AppFont.regularColorGrey1_15,
                            ),
                            trailing: Text(
                              "View All",
                              style: AppFont.lightColorWhite_12,
                            ),
                          ),
                          Consumer<TickerDataProvider>(
                            builder: (context,data,child) {
                              print(data.availableTickers);
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: List.generate(
                                      data.availableTickers.length, (index) =>
                                        ScrollVSComponent2(
                                          companyName: data
                                              .availableTickers[index].name
                                              .toString(),
                                          percentageLossGain:
                                          data.availableTickers[index].ticker,
                                          amount:
                                          data.availableTickers[index].price
                                              .toString(),
                                          ticker: data.availableTickers[index].ticker,
                                          tourneyId: tourneyId,
                                        ),),
                                  ),
                                ),
                              );
                            }
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      //

                      // //.....................Blooming Startups.................................//
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     ListTile(
                      //       leading: Text(
                      //         "Blooming Startups",
                      //         style: AppFont.regularColorGrey1_15,
                      //       ),
                      //       trailing: Text(
                      //         "View All",
                      //         style: AppFont.lightColorgrey_10,
                      //       ),
                      //     ),
                      //     SingleChildScrollView(
                      //       scrollDirection: Axis.horizontal,
                      //       child: Container(
                      //         margin: EdgeInsets.symmetric(horizontal: 3.w),
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //           children: [
                      //             //Company
                      //             for (int i = 0; i < 5; i++) ...[
                      //               //............................Component2..........................//
                      //               const VsStartupComponent(),
                      //               SizedBox(
                      //                 width: 3.w,
                      //               ),
                      //             ],
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // Container(
                      //   margin: EdgeInsets.symmetric(vertical: 1.h),
                      //   child: ListTile(
                      //     leading: Text(
                      //       "Pharamacy",
                      //       style: AppFont.regularColorGrey1_15,
                      //     ),
                      //     trailing: Text(
                      //       "View All",
                      //       style: AppFont.lightColorgrey_10,
                      //     ),
                      //   ),
                      // ),
                      // //..........................................CompanyStockCompo.....................................//
                      // for (int i = 0; i < 3; i++) ...[
                      //   const ShareStockComponentPortfolioScreen(),
                      //   SizedBox(height: 1.h),
                      // ]
                    ],
                  ),
                ],
              );
      }
    );
  }
}
