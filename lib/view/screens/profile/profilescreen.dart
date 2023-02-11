import "package:flutter/material.dart";
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/utils/baseappbar.dart';
import 'package:maze/view/utils/staticUiThemes/staticuielements.dart';
import 'package:maze/view/widgets/profileScreen/profileDetails.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BaseAppBar(
                title: "Profile Management",
                appBar: AppBar(),
                mLeftAction: () {
                  Navigator.pop(context);
                }),
            Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Dimens.margin16, vertical: Dimens.margin14),
                width: 100.w,
                height: 8.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.colorGrey2),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: AppColors.colorWhite,
                  ),
                  title: Text("Ayush Bachan", style: AppFont.boldColorWhite_15),
                  subtitle: GestureDetector(
                    child: Text(
                      "Edit Account",
                      style: AppFont.regularColorLightBlue2_12
                          .copyWith(decoration: TextDecoration.underline),
                    ),
                  ),
                )),
            Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Dimens.margin20, vertical: Dimens.margin7),
                child: Text("Dashboard", style: AppFont.regularColorGrey6_15)),
            Column(
              children: List.generate(
                  profileScreenData.length,
                  (index) => ProfileDetailsTile(
                      profileDetailsTitle: profileScreenData[index].profileTitle,
                      profileDetailsIcon: profileScreenData[index].iconName)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: Dimens.margin20, vertical: Dimens.margin7),
              child: const Divider(
                color: AppColors.colorGrey2,
                thickness: 1,
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Dimens.margin20, vertical: Dimens.margin7),
                child: Text(
                  "Account",
                  style: AppFont.regularColorGrey6_15,
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: Dimens.margin16, vertical: Dimens.margin8),
              height: 6.h,
              width: 100.w,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        AppColors.colorLightBlue2.withOpacity(0.2)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ))),
                onPressed: () => {},
                child: Text(
                  "Logout",
                  style: AppFont.mediumBoldColorBlue_18,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
