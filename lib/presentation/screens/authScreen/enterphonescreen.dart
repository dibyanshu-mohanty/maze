import 'package:flutter/material.dart';
import 'package:maze/presentation/utils/appscreenbackground.dart';

import '../../../theme/app_dimens.dart';
import '../../../theme/app_font.dart';

class EnterPhoneNumber extends StatelessWidget {
  const EnterPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AppScreenBackground(),
            Container(
              margin: EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("verification",style: AppFont.regularColorWhite_18,),
                  SizedBox(height: Dimens.margin20,),
                  Text("Please Enter Your Phone \nNumber",style: AppFont.mediumBoldColorWhite_18,),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
