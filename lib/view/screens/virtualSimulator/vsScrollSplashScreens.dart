import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:maze/controller/providers/virtualSimulator/portfoliodataprovider.dart';
import 'package:maze/theme/app_font.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import 'package:story/story_page_view.dart';

import '../../../constants/constRouteNames.dart';
import '../../../controller/providers/virtualSimulator/userAllTournmentsProvider.dart';
import '../../../theme/app_colors.dart';
import '../../utils/uithemes/snackbarmessages.dart';
import 'vsSplashScreenOne.dart';
import 'vsSplashScreenThree.dart';
import 'vsSplashScreenTwo.dart';

class VsSplashScreens extends StatefulWidget {
  const VsSplashScreens({Key? key}) : super(key: key);

  @override
  _VsSplashScreensState createState() => _VsSplashScreensState();
}

class _VsSplashScreensState extends State<VsSplashScreens> {
  late ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;
  List<Widget> onBoardScreens = const [
    SplashScreenOne(),
    SplashScreenTwo(),
    SplashScreenThree(),
  ];

  @override
  void initState() {
    super.initState();
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.resume);
  }

  @override
  void dispose() {
    indicatorAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tournamentDetailObj = Provider.of<TournamentProvider>(context,listen:false);
    final portfolioObj = Provider.of<PortfolioProvider>(context,listen:false);
    return Scaffold(
      body: StoryPageView(
        itemBuilder: (context, pageIndex, storyIndex) {
          return onBoardScreens[storyIndex];
        },

        indicatorAnimationController: indicatorAnimationController,

        pageLength: 1,
        storyLength: (_) {
          return onBoardScreens.length;
        },
        gestureItemBuilder: (context, pageIndex, storyIndex) {
          return Stack(children: [
            if (storyIndex == 2)
             Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
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
                              Radius.circular(10),
                            ),
                          ),
                          child: const ListTile(
                            // leading: SizedBox(width: 0.5.w),
                            title: Text(
                              "Get Started",
                              style: AppFont.bold,
                              textAlign: TextAlign.center,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_sharp,
                              color: AppColors.colorWhite,
                            ),
                          ),
                        ),
                        onTap: () async{
                          final refs = await SharedPreferences.getInstance();
                          await refs.setBool("hasVisitedSplashScreen", true);
                          Navigator.pushReplacementNamed(context, vsTournamentScreen);
                        },
                      ),
                    ),
          ]);
        },
      ),
    );
  }
}
