import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:maze/presentation/screens/onboardingScreen/screenone.dart';
import 'package:maze/presentation/screens/onboardingScreen/screenthree.dart';
import 'package:maze/presentation/screens/onboardingScreen/screentwo.dart';
import 'package:sizer/sizer.dart';


class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);


  List<Widget> onBoardScreens = [
    OnboardScreenOne(),
    OnboardScreenTwo(),
    OnboardScreenThree(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Swiper(
          itemBuilder: (context, index) {
            return onBoardScreens[index];
          },
          itemWidth: 100.w,
          itemHeight: 100.h,
          itemCount: 3,
          layout: SwiperLayout.DEFAULT,
          pagination: SwiperPagination(),
          // control:SwiperControl(),
        ),
      ),
    );
  }
}
