import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_images.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_font.dart';

import 'Widgets/virtualSimulatorComponent2.dart';
import 'Widgets/virtualSimulatorComponent3.dart';
import 'Widgets/virtualSimulatorScreenComponent1.dart';

class VirtualSimulatorScreen extends StatelessWidget {
  const VirtualSimulatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 10.h,
          leading: Container(
            margin: EdgeInsets.only(top: 5.h, left: 10),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24,
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(top: 5.h),
            child: Text(
              "Virtual Simulator",
              style: AppFont.regularColorWhite_15,
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //Component 1
            const VSSComponent1(),
            SizedBox(
              height: 2.h,
            ),
            // Component 2
            // ScrollVSComponent2(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Row1
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Row(
                    children: [
                      Text(
                        "This Week Trending",
                        style: AppFont.regularColorGrey1_15,
                      ),
                      Spacer(),
                      Text(
                        "View All",
                        style: AppFont.lightColorgrey_10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Company
                        for (int i = 0; i < 5; i++) ...[
                          //............................Component2..........................//
                          ScrollVSComponent2(),
                          SizedBox(
                            width: 3.w,
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            //Component 3
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                children: [
                  Text(
                    "Category",
                    style: AppFont.regularColorGrey1_15,
                  ),
                  Spacer(),
                  Text(
                    "Show More",
                    style: AppFont.lightColorgrey_10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Component 3
                VSComponent3(),
                VSComponent3()
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Component 3
                VSComponent3(),
                VSComponent3()
              ],
            )
          ],
        ),
      ),
    );
  }
}
