
import 'package:flutter/cupertino.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../../../theme/coreimport.dart';
import '../../screens/homeScreen/homescreen.dart';

class SwipetoPay extends StatefulWidget {
  const SwipetoPay({Key? key}) : super(key: key);

  @override
  State<SwipetoPay> createState() => _SwipetoPayState();
}

class _SwipetoPayState extends State<SwipetoPay> {

  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(
          horizontal: Dimens.margin30, vertical: Dimens.margin20),
      child: SwipeableButtonView(
        buttonText: 'Slide to Pay',
        buttonWidget: Container(
          child: const Icon(Icons.arrow_forward,
            color: AppColors.colorBlack,
          ),),
        activeColor: AppColors.colorGrey1,
        buttonColor: AppColors.colorGolden,
        isFinished: isFinished,
        onWaitingProcess: () {
          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              isFinished = true;
            });
          });
        },
        onFinish: () async {
          await Navigator.push(context,
              CupertinoPageRoute(builder: (context) => HomeScreen()));
          setState(() {
            isFinished = false;
          });
        },
      ),
    );
  }
}
