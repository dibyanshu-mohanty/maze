import 'package:flutter/material.dart';
import 'package:maze/theme/app_font.dart';

import 'package:maze/view/screens/virtualSimulator/vsMarketScreen.dart';
import 'package:maze/view/utils/staticUiThemes/staticuielements.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_colors.dart';
import 'leaderboardscreen.dart';
import 'vsPortfolioScreen.dart';
import 'vshistoryScreen.dart';

// import '../../../theme/app_font.dart';

class VirtualSimulatorScreen extends StatelessWidget {
  const VirtualSimulatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tourneyId = ModalRoute.of(context)!.settings.arguments as String ?? "";
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          backgroundColor: AppColors.colorTransparent,
          elevation: 0,
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: AppColors.colorWhite,
            tabs: vsTabs
          ),
        ),
        body: TabBarView(
          children: [
            PortfolioScreen(tourneyId: tourneyId,),
            VsMarketScreen(tourneyId: tourneyId,),
            LeaderBoardScreen(),
          ],
        ),
      ),
    );
  }
}
