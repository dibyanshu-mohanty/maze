import 'dart:math';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/learningScreen/quizContent/quizscreen.dart';
import 'package:maze/view/utils/baseappbar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../utils/appscreenbackground.dart';
import '../../utils/staticUiThemes/staticuielements.dart';
import 'learningContent/learningcontentscreen.dart';

class ReadingTaskScreen extends StatefulWidget {
  const ReadingTaskScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ReadingTaskScreen> createState() => _ReadingTaskScreenState();
}

class _ReadingTaskScreenState extends State<ReadingTaskScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const AppScreenBackground(),
        SizedBox(
          height: 100.h,
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BaseAppBar(
                  title: "Module 1",
                  appBar: AppBar(),
                  mLeftAction: () {
                    Navigator.pop(context);
                  }),
              TabBar(
                controller: _tabController,
                tabs: tabs,
                isScrollable: false,
                indicatorColor: AppColors.colorGolden,
                indicatorWeight: 2,
              ),
              Container(
                height: 75.h,
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                    children: const [
                      LearningContentScreen(),
                      QuizScreen(),
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.arrow_back,color: AppColors.colorWhite,),
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Swipe Left",
                        style: AppFont.mediumBoldColorGolden_14,
                      ),
                      TextSpan(
                        text: " or ",
                        style: AppFont.mediumBoldColorWhite_14,
                      ),
                      TextSpan(
                        text: "Right",
                        style: AppFont.mediumBoldColorGolden_14,
                      ),
                      TextSpan(
                        text: " for the next card ",
                        style: AppFont.mediumBoldColorWhite_14,
                      )
                    ]
                  )),
                  const Icon(Icons.arrow_forward,color: AppColors.colorWhite),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
