import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/model/learning/model/taskmodel.dart';
import 'package:maze/model/uiModels/profiletilemodel.dart';
import 'package:maze/theme/coreimport.dart';

import '../../../model/learning/model/learningmodulemodel.dart';


// HomeScreen

final List<Widget> homeScreenHeaderCategory = [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(
        AppImages.ic_portfolioIcon,
        width: 5.w,
        height: 5.w,
      ),
      AutoSizeText(
        "Portfolio",
        style: AppFont.mediumBoldColorWhite_15,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    ],
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(
        AppImages.ic_goldIcon,
        width: 5.w,
        height: 5.w,
      ),
      AutoSizeText(
        "Gold",
        style: AppFont.mediumBoldColorWhite_15,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    ],
  ),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(
        AppImages.ic_playIcon,
        width: 5.w,
        height: 5.w,
      ),
      AutoSizeText(
        "Play",
        style: AppFont.mediumBoldColorWhite_15,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    ],
  ),
];

// LearningScreen

final List<Tab> tabs = <Tab>[
  Tab(
    child: Text(
      "Learning",
      style: AppFont.mediumBoldColorWhite_14,
    ),
  ),
  Tab(
    child: Text(
      "Quiz",
      style: AppFont.mediumBoldColorWhite_14,
    ),
  ),
];

List<Map<String,dynamic>> moduleImages = [
  {"1" : AppImages.ic_learningModule2,},
  {"2" : AppImages.ic_learningModule3,},
  {"3" : AppImages.ic_learningModule4,},
  {"4" : AppImages.ic_learningModule5,},
  {"5" : AppImages.ic_learningModule6,},
  {"6" : AppImages.ic_learningModule7,},
];

Map<String,String> taskImages = {
  'video' : AppImages.ic_videoIcon,
  'games' : AppImages.ic_gamesIcon,
  'read' : AppImages.ic_readingIcon,
};

// Task Screen

List<TaskModel> tasks = [
  TaskModel(taskName: "Task 1", taskType: "video"),
  TaskModel(taskName: "Task 2", taskType: "read"),
  TaskModel(taskName: "Task 3", taskType: "video"),
  TaskModel(taskName: "Task 4", taskType: "games"),
  TaskModel(taskName: "Task 5", taskType: "read"),
];

// Profile Screen

final List<ProfileTileModel> profileScreenData = [
  ProfileTileModel(
      profileTitle: "Add Parent",
      iconName: Icons.person_add_alt_outlined,
      route: addParentScreen),
  ProfileTileModel(
      profileTitle: "Transaction History",
      iconName: Icons.history,
      route: addParentScreen),
  ProfileTileModel(
      profileTitle: "Help & Support",
      iconName: Icons.language_outlined,
      route: addParentScreen),
  ProfileTileModel(
      profileTitle: "Terms and Conditions",
      iconName: CupertinoIcons.doc_text,
      route: addParentScreen),
  ProfileTileModel(
      profileTitle: "FAQ's",
      iconName: Icons.lightbulb_outline_rounded,
      route: addParentScreen),
  ProfileTileModel(
      profileTitle: "Join Us",
      iconName: CupertinoIcons.paperplane,
      route: addParentScreen),
];


// Digital Gold Screen
List<String> amountDefault = [
  "50",
  "100",
  "200",
  "500",
];

List<String> goldAmountDefault = [
  "0.25",
  "0.5",
  "0.75",
  "1",
];

// Virtual Simulator Screen

final List<Tab> vsTabs = [
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
];

final List<Tab> tourneyTabs = [
  Tab(
    child: Text(
      "All",
      style: AppFont.mediumBoldColorWhite_13,
    ),
  ),
  Tab(
    child: Text(
      "Running",
      style: AppFont.mediumBoldColorWhite_13,
    ),
  ),
];

final inputDecorationBottomSheet = InputDecoration(
  hintStyle: AppFont.regularColorGrey8_15,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(9),
    borderSide: const BorderSide(color: AppColors.colorWhite),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(9),
    borderSide: const BorderSide(color: AppColors.colorWhite),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(9),
    borderSide: const BorderSide(color: AppColors.colorWhite),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(9),
    borderSide: const BorderSide(color: AppColors.colorWhite),
  ),
  contentPadding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
);