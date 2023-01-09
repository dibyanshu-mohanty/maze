import 'package:flutter/cupertino.dart';
import 'package:maze/theme/coreimport.dart';

final List<Widget> homeScreenHeaderCategory = [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
        Image.asset("assets/icons/ic_portfolioIcon.png",width: 5.w,height: 5.w,),
        Text("Portfolio", style: AppFont.mediumBoldColorWhite_15,),
    ],
  ),

  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset("assets/icons/ic_goldIcon.png",width: 5.w,height: 5.w,),
      Text("Gold", style: AppFont.mediumBoldColorWhite_15,),
    ],
  ),

  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset("assets/icons/ic_playIcon.png",width: 5.w,height: 5.w,),
      Text("Play", style: AppFont.mediumBoldColorWhite_15,),
    ],
  ),
];