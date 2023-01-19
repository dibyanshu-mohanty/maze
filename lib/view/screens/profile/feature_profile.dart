import "package:flutter/material.dart";
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/widgets/profileScreen/profileDetails.dart';

class FeatureProfile extends StatelessWidget {
  const FeatureProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 9, top: 44),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 118.0,
                  ),
                  Text(
                    "Profile Management",
                    textAlign: TextAlign.center,
                    style: AppFont.mediumBoldColorWhite_13,
                  ),
                ],
              ),
            ),
            //component2
            Container(
              margin: EdgeInsets.fromLTRB(16, 19, 19, 0),
              width: 328,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff292C33)),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(8, 14, 0, 14),
                      child: CircleAvatar(
                          // backgroundImage:
                          //     NetworkImage('https://example.com/avatar.png'),
                          backgroundColor: Colors.white,
                          radius: 21.0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(23, 15, 0, 0),
                        child: Text("Ayush Bachan",
                            style: AppFont.boldColorWhite_15),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(23, 3, 0, 0),
                        child: Text(
                          "Edit Account",
                          style: AppFont.regularColorBlue_12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(16, 14, 0, 14),
                child: Text("Dashboard", style: AppFont.regularColorGrey6_15)),
            profileDetails(
                icon: Icons.person_add_alt_outlined, text: "Add Parent"),
            SizedBox(height: 31),
            profileDetails(icon: Icons.history, text: "Transaction History"),
            SizedBox(height: 31),
            profileDetails(
                icon: Icons.language_outlined, text: "Help and Support"),
            SizedBox(height: 31),
            profileDetails(
                icon: Icons.insert_drive_file_outlined,
                text: "Term and Condition"),
            SizedBox(height: 31),
            profileDetails(icon: Icons.lightbulb_outline, text: "FAQ's"),
            SizedBox(height: 31),
            profileDetails(icon: Icons.send, text: "Join Us"),
            Container(
              margin: EdgeInsets.fromLTRB(15, 31, 15.5, 17),
              child: Divider(
                color: Color(0xff292C33),
                thickness: 1,
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(21, 0, 0, 0),
                child: Text(
                  "Account",
                  style: AppFont.regularColorGrey6_15,
                )),
            Container(
              margin: EdgeInsets.fromLTRB(16, 12, 16, 0),
              height: 46,
              width: 326,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(68, 155, 234, 0.2)),
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
