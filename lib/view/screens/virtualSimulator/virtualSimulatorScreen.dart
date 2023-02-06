import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_images.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_font.dart';

import '../../widgets/virtualSimulator/virtualSimulatorComponent2.dart';
import '../../widgets/virtualSimulator/virtualSimulatorComponent3.dart';
import '../../widgets/virtualSimulator/virtualSimulatorScreenComponent1.dart';

class VirtualSimulatorScreen extends StatelessWidget {
  const VirtualSimulatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 10.h,
          leading: Container(
            margin: EdgeInsets.only(top: 5.h, left: 5.w),
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
                //check
                ListTile(
                  leading: Text(
                    "This Week Trending",
                    style: AppFont.regularColorGrey1_15,
                  ),
                  trailing: Text(
                    "View All",
                    style: AppFont.lightColorgrey_10,
                  ),
                ),

                // SizedBox(
                //   height: 2.h,
                // ),

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
              height: 1.h,
            ),
            //Component 3
            ListTile(
              leading: Text(
                "Category",
                style: AppFont.regularColorGrey1_15,
              ),
              trailing: Text(
                "Show More",
                style: AppFont.lightColorgrey_10,
              ),
            ),
            Wrap(
              spacing: 5.w,
              runSpacing: 1.h,
              alignment: WrapAlignment.center,
              children: const [
                VSComponent3(),
                VSComponent3(),
                VSComponent3(),
                VSComponent3()
              ],
            ),

            SizedBox(
              height: 1.h,
            ),
            //
            Container(
              margin: EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueAccent)),
              child: ListTile(
                leading: Image.asset(
                  AppImages.Coins2,
                  fit: BoxFit.contain,
                  width: 10.w,
                  height: 10.h,
                ),
                title: Text(
                  "Applo Pharmacy",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xffffffff)),
                ),
                subtitle: Text(
                  "Applo Group",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Color(0xffffffff)),
                ),
                trailing: Container(
                  width: 18.w,
                  height: 10.h,
                  margin: EdgeInsets.symmetric(vertical: 0.6.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            AppImages.bars,
                            fit: BoxFit.cover,
                            width: 10,
                            height: 10,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            "2,346",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            AppImages.GreenUp,
                            fit: BoxFit.contain,
                            width: 12,
                            height: 12,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            "23.66%",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: Color(0xff62eb56)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //.....................Blooming Startups.................................//
          ],
        ),
      ),
    );
  }
}
