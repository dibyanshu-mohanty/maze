import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

// import '../../../controller/providers/virtualSimulator/userAllTournmentsProvider.dart';
import '../../../controller/providers/virtualSimulator/portfoliodataprovider.dart';
import '../../../theme/app_font.dart';
import '../../../theme/app_images.dart';
import '../../widgets/virtualSimulator/ShareStockComponentPortFolioScreen.dart';
import 'vsAppScreenBackground.dart';
import '../../widgets/virtualSimulator/portfolioComponent.dart';

class PortfolioScreen extends StatelessWidget {
  final String tourneyId;
  const PortfolioScreen({super.key,this.tourneyId = ""});

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        const VsAppScreenBackground(),
        FutureBuilder(
          future: Provider.of<PortfolioProvider>(context,listen: false).getPortfolioData(context,tourneyId),
          builder: (context,snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: SpinKitFadingCircle(color: AppColors.colorWhite,),);
            }
            return Consumer<PortfolioProvider>(
              builder: (context,portfolio,child) {
                return ListView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    VSSComponent1(
                      currentValue: ((portfolio.portfolioData.invested ?? 0.0) + (portfolio.portfolioData.profit ?? 0.0)),
                      investedAmount: portfolio.portfolioData.invested ?? 0.0,
                      totalReturns: portfolio.portfolioData.profit ?? 0.0,
                      balance: portfolio.portfolioData.balance ?? 0.0,
                    ),
                    Container(
                      child: ListTile(
                        leading: Text(
                          "Holdings",
                          style: AppFont.regularColorWhite_15,
                        ),
                        trailing: Text(
                          "View All",
                          style: AppFont.lightColorWhite_12,
                        ),
                      ),
                    ),
                    portfolio.holdings.isEmpty
                    ? Center(child: Text("Start buying your favourite stocks",style: AppFont.semiBoldColorWhite_15,))
                    : Column(
                      children: List.generate(3, (index) => const ShareStockComponentPortfolioScreen(),),
                    ),
                    Align(
                      child: GestureDetector(
                        child: Container(
                          width: 55.w,
                          // height: 5.h,
                          margin: EdgeInsets.symmetric(vertical: 2.h),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                AppColors.colorLightBlue3.withOpacity(0.3),
                                AppColors.colorWhite.withOpacity(0.0),
                              ],
                            ),
                            border: Border.all(
                              color: AppColors.colorPink.withOpacity(0.4),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(28),
                            ),
                          ),
                          child: ListTile(
                            // leading: SizedBox(width: 0.5.w),
                            title: Text(
                              "History",
                              style: AppFont.regularColorWhite_13,
                              textAlign: TextAlign.center,
                            ),
                            trailing: const Icon(
                              Icons.arrow_right_alt_outlined,
                              color: AppColors.colorWhite,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, historyScreen);
                        },
                      ),
                    ),
                  ],
                );
              }
            );
          }
        ),
      ],
    );
  }
}
