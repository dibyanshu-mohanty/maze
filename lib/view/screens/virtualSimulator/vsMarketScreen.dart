import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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

class VsMarketScreen extends StatefulWidget {
  const VsMarketScreen({super.key});

  @override
  State<VsMarketScreen> createState() => _VsMarketScreenState();
}

class _VsMarketScreenState extends State<VsMarketScreen> {
  var _isInit = true;
  var _isLoading = false;
  @override
  void didChangeDependencies() {
    if (_isInit &&
        Provider.of<TournamentProvider>(context).listAvailableTickers.isEmpty) {
      _isLoading = true;
      Provider.of<TournamentProvider>(context)
          .availableTickersData(context)
          .then((value) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final stocksList =
        Provider.of<TournamentProvider>(context).listAvailableTickers;
    return _isLoading
        ? SpinKitFadingCircle(
            color: AppColors.colorWhite,
            size: 10.w,
          )
        : Stack(
            children: [
              const VsAppScreenBackground(),
              ListView(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Row1
                      //check
                      ListTile(
                        leading: Text(
                          "This Week Trending",
                          style: AppFont.regularColorGrey1_15,
                        ),
                        trailing: Text(
                          "View All",
                          style: AppFont.lightColorgrey_10,
                        ),
                      ),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //Company
                              for (int i = 0; i < stocksList.length; i++) ...[
                                //............................Component2..........................//
                                ScrollVSComponent2(
                                  companyName: stocksList[i].name.toString(),
                                  percentageLossGain:
                                      stocksList[i].profit.toString(),
                                  amount:
                                      stocksList[i].current_price.toString(),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  //Component 3
                  ListTile(
                    leading: Text(
                      "Category",
                      style: AppFont.regularColorGrey1_15,
                    ),
                    trailing: Text(
                      "Show More",
                      style: AppFont.lightColorgrey_10,
                    ),
                  ),
                  Wrap(
                    spacing: 5.w,
                    runSpacing: 1.h,
                    alignment: WrapAlignment.center,
                    children: const [
                      VSComponent3(),
                      VSComponent3(),
                      VSComponent3(),
                      VSComponent3()
                    ],
                  ),

                  SizedBox(
                    height: 1.h,
                  ),
                  //

                  //.....................Blooming Startups.................................//
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Text(
                          "Blooming Startups",
                          style: AppFont.regularColorGrey1_15,
                        ),
                        trailing: Text(
                          "View All",
                          style: AppFont.lightColorgrey_10,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //Company
                              for (int i = 0; i < 5; i++) ...[
                                //............................Component2..........................//
                                const VsStartupComponent(),
                                SizedBox(
                                  width: 3.w,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 1.h),
                    child: ListTile(
                      leading: Text(
                        "Pharamacy",
                        style: AppFont.regularColorGrey1_15,
                      ),
                      trailing: Text(
                        "View All",
                        style: AppFont.lightColorgrey_10,
                      ),
                    ),
                  ),
                  //..........................................CompanyStockCompo.....................................//
                  for (int i = 0; i < 3; i++) ...[
                    const ShareStockComponentPortfolioScreen(),
                    SizedBox(height: 1.h),
                  ]
                ],
              ),
            ],
          );
  }
}
