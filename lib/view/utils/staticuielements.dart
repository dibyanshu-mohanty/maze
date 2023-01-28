import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:maze/theme/coreimport.dart';

final List<Widget> homeScreenHeaderCategory = [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
        Image.asset(AppImages.ic_portfolioIcon,width: 5.w,height: 5.w,),
        AutoSizeText("Portfolio", style: AppFont.mediumBoldColorWhite_15,overflow: TextOverflow.ellipsis,maxLines: 1,),
    ],
  ),

  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(AppImages.ic_goldIcon,width: 5.w,height: 5.w,),
      AutoSizeText("Gold", style: AppFont.mediumBoldColorWhite_15,overflow: TextOverflow.ellipsis,maxLines: 1,),
    ],
  ),

  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(AppImages.ic_playIcon,width: 5.w,height: 5.w,),
      AutoSizeText("Play", style: AppFont.mediumBoldColorWhite_15,overflow: TextOverflow.ellipsis,maxLines: 1,),
    ],
  ),
];

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