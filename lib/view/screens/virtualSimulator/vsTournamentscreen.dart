import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/controller/providers/appwide/loaderprovider.dart';
import 'package:maze/controller/providers/virtualSimulator/userAllTournmentsProvider.dart';
import 'package:maze/model/virtualSimulatorModels/service/portfolio.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_sizers.dart';
import 'package:maze/view/utils/baseappbar.dart';
import 'package:maze/view/utils/staticUiThemes/staticuielements.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

// import '../../../controller/providers/virtualSimulator/userAllTournmentsProvider.dart';
import '../../../controller/providers/virtualSimulator/portfoliodataprovider.dart';
import '../../../theme/app_dimens.dart';
import '../../../theme/app_font.dart';
import '../../../theme/app_images.dart';
import '../../widgets/virtualSimulator/ShareStockComponentPortFolioScreen.dart';
import 'vsAppScreenBackground.dart';
import '../../widgets/virtualSimulator/portfolioComponent.dart';

class TournamentScreen extends StatefulWidget {
  const TournamentScreen({super.key});

  @override
  State<TournamentScreen> createState() => _TournamentScreenState();
}

class _TournamentScreenState extends State<TournamentScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              "Virtual League",
              style: AppFont.mediumBoldColorWhite_15,
            ),
            backgroundColor: AppColors.colorTransparent,
            elevation: 0,
            centerTitle: true,
            bottom:
                TabBar(indicatorColor: AppColors.colorWhite, tabs: tourneyTabs),
          ),
          body: Stack(
            children: [
              const VsAppScreenBackground(),
              FutureBuilder(
                  future: Provider.of<TournamentProvider>(context, listen: false)
                      .tournamentId(context),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: SpinKitFadingCircle(
                          color: AppColors.colorWhite,
                        ),
                      );
                    }
                    return Consumer<TournamentProvider>(
                        builder: (context, tourney, child) {
                          print(tourney.openTournaments[2].id);
                      return TabBarView(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          tourney.openTournaments.isEmpty
                          ? Center(
                                  child: Text(
                                    "No Tournaments Found !",
                                    style: AppFont.boldColorWhite_20,
                                  ),
                                )
                          :  Provider.of<LoaderProvider>(context).isLoading
                          ? const SpinKitFadingCircle(color: AppColors.colorWhite,)
                          : ListView(
                                  children: List.generate(
                                  tourney.openTournaments.length,
                                  (index) => GestureDetector(
                                    onTap : () async{
                                      Provider.of<LoaderProvider>(context,listen:false).toggleLoading(true);
                                      dynamic response = await Portfolio().fetchPortfolioData(context,tourney.openTournaments[index].id);
                                      if(response == null || response["status"] == "error") {
                                        SchedulerBinding.instance.addPostFrameCallback((_) {
                                          Navigator.pushNamed(context, vsTournamentDetailScreen, arguments: tourney.openTournaments[index].id);
                                          Provider.of<LoaderProvider>(context,listen:false).toggleLoading(false);
                                        });
                                      } else {
                                        SchedulerBinding.instance.addPostFrameCallback((_) {
                                          Navigator.pushNamed(context, virtualSimulatorScreen, arguments: tourney.openTournaments[index].id);
                                          Provider.of<LoaderProvider>(context,listen:false).toggleLoading(false);
                                        });
                                      }
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5.w,2.h,5.w,0),
                                      width: 82.w,
                                      height: 18.h,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            AppColors.colorLightBlue3
                                                .withOpacity(0.3),
                                            AppColors.colorWhite.withOpacity(0.0)
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: AppColors.colorPink
                                                .withOpacity(0.4)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          AppSizers.height10,
                                          Text(
                                            tourney.openTournaments[index].name,
                                            style: AppFont.mediumBoldColorGolden_14,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              tourney.openTournaments[index].image.isEmpty
                                              ? Image.asset(AppImages.ic_tourney,width: 30.w)
                                                  : Image.network(tourney.openTournaments[index].image),
                                              AppSizers.width20,
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "Prize Pool",
                                                    style: AppFont
                                                        .regularColorGolden_12,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 1.5.h,
                                                        width: 7.w,
                                                        margin:
                                                            EdgeInsets.symmetric(
                                                                horizontal: 1.w),
                                                        // alignment: Alignment.center,
                                                        child: Image.asset(
                                                            AppImages.ic_MazeLogo,
                                                            fit: BoxFit.cover),
                                                      ),
                                                      Text(
                                                        "${tourney.openTournaments[index].first_prize + tourney.openTournaments[index].second_prize + tourney.openTournaments[index].third_prize}",
                                                        style: AppFont
                                                            .mediumBoldColorWhite_15,
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                tourney
                                                    .openTournaments[index].status,
                                                style:
                                                    AppFont.regularColorGolden_12,
                                              ),
                                              AppSizers.width20,
                                              Text(
                                                "FREE",
                                                style: AppFont.boldColorGreen_18,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                          tourney.runningTournaments.isEmpty
                              ? Center(
                            child: Text(
                              "No Running Tournaments Found !",
                              style: AppFont.boldColorWhite_20,
                            ),
                          )
                              : ListView(
                              children: List.generate(
                                tourney.runningTournaments.length,
                                    (index) => GestureDetector(
                                  onTap : () async{
                                    dynamic response = await Portfolio().fetchPortfolioData(context,tourney.runningTournaments[index].id);
                                    if(response == null || response["status"] == "error") {
                                      Navigator.pushNamed(context, vsTournamentDetailScreen, arguments: tourney.runningTournaments[index].id);
                                    } else {
                                      Navigator.pushNamed(context, virtualSimulatorScreen, arguments: tourney.runningTournaments[index].id);
                                    }
                                  },
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(5.w,2.h,5.w,0),
                                    width: 82.w,
                                    height: 18.h,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.colorLightBlue3
                                              .withOpacity(0.3),
                                          AppColors.colorWhite.withOpacity(0.0)
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: AppColors.colorPink
                                              .withOpacity(0.4)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        AppSizers.height10,
                                        Text(
                                          tourney.runningTournaments[index].name,
                                          style: AppFont.mediumBoldColorGolden_14,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            tourney.runningTournaments[index].image.isEmpty
                                                ? Image.asset(AppImages.ic_tourney,width: 30.w)
                                                : Image.network(tourney.runningTournaments[index].image),
                                            AppSizers.width20,
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Prize Pool",
                                                  style: AppFont
                                                      .regularColorGolden_12,
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 1.5.h,
                                                      width: 7.w,
                                                      margin:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 1.w),
                                                      // alignment: Alignment.center,
                                                      child: Image.asset(
                                                          AppImages.ic_MazeLogo,
                                                          fit: BoxFit.cover),
                                                    ),
                                                    Text(
                                                      "${tourney.runningTournaments[index].first_prize + tourney.runningTournaments[index].second_prize + tourney.runningTournaments[index].third_prize}",
                                                      style: AppFont
                                                          .mediumBoldColorWhite_15,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              tourney
                                                  .runningTournaments[index].status,
                                              style:
                                              AppFont.regularColorGolden_12,
                                            ),
                                            AppSizers.width20,
                                            Text(
                                              "FREE",
                                              style: AppFont.boldColorGreen_18,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      );
                    });
                  }),
            ],
          ),
        ),);
  }
}
