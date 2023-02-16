import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:maze/theme/app_font.dart';
import 'package:provider/provider.dart';
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
  var _isInit = true;
  var _isLoading = false;
  @override
  void initState() {
    super.initState();
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.resume);
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      Provider.of<TournamentProvider>(context).tournamentId(context);
    }
    _isInit = false;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    indicatorAnimationController.dispose();
    super.dispose();
  }

  void requestForUserPortfolio(TournamentProvider tournamentDetailObj) async {
    await tournamentDetailObj.portfolioData(context);

    final userPortfolioResponse = tournamentDetailObj.portFolio;
    if (userPortfolioResponse.current_value != null) {
      setState(() {
        _isLoading = false;
      });
      Navigator.pushReplacementNamed(context, virtualSimulatorScreen);
    } else {
      messageSnackBar(context, "Please Try Again");
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final tournamentDetailObj = Provider.of<TournamentProvider>(context);
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
              _isLoading
                  ? SpinKitFadingCircle(
                      color: AppColors.colorWhite,
                      size: 10.w,
                    )
                  : Align(
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
                        onTap: () async {
                          setState(() {
                            _isLoading = true;
                          });
                          requestForUserPortfolio(tournamentDetailObj);
                        },
                      ),
                    ),
          ]);
        },
        // onPageLimitReached: () {
        //   Navigator.pop(context);
        // },
      ),
    );
  }
}
