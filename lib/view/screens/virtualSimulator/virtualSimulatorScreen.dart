import 'package:flutter/material.dart';
import 'package:maze/theme/app_font.dart';

import 'package:maze/view/screens/virtualSimulator/vsMarketScreen.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_colors.dart';
import 'vsPortfolioScreen.dart';
import 'vshistoryScreen.dart';

// import '../../../theme/app_font.dart';

class VirtualSimulatorScreen extends StatelessWidget {
  const VirtualSimulatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 10.h,
          leading: Container(
            margin: EdgeInsets.only(top: 5.h, left: 5.w),
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.colorWhite,
              size: 24,
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(top: 5.h),
            child: Text(
              "Virtual Simulator",
              style: AppFont.regularColorWhite_15,
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: AppColors.colorBlack,
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: AppColors.colorWhite,
            tabs: [
              Tab(
                child: Text(
                  "Portfolio",
                  style: AppFont.mediumBoldColorWhite_13,
                ),
              ),
              Tab(
                child: Text(
                  "Market",
                  style: AppFont.mediumBoldColorWhite_13,
                ),
              ),
              Tab(
                child: Text(
                  "Leaderboard",
                  style: AppFont.mediumBoldColorWhite_13,
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PortfolioScreen(),
            VsMarketScreen(),
            HistoryScreen(),
          ],
        ),
      ),
    );
  }
}
