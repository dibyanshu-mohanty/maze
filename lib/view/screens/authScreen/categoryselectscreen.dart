import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/controller/providers/auth/authprovider.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/appscreenbackground.dart';
import 'enterphonescreen.dart';

class CategorySelectScreen extends StatelessWidget {
  const CategorySelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CategorySelectProvider>(
        builder: (context, cspObj, _) {
          return Stack(
            children: [
              const AppScreenBackground(),
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //....................................Changes by shubham.........................................//
                    GestureDetector(
                      child: Container(
                        height: 6.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(color: AppColors.colorWhite)),
                        alignment: Alignment.center,
                        child: Text(
                          "Teen",
                          style: AppFont.mediumBoldColorWhite_20,
                        ),
                      ),
                      onTap: () async {
                        //Using CategorySelectProvider here
                        cspObj.selectType("TEEN");
                        Navigator.pushNamed(context, enterPhonenumber);
                      },
                    ),
                    SizedBox(
                        height: 12.h,
                        child: const VerticalDivider(
                          thickness: 1.0,
                          color: AppColors.colorWhite,
                        )),
                    Container(
                      width: 12.w,
                      height: 12.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.colorWhite, width: 1.0),
                          color: AppColors.colorWhite,
                          shape: BoxShape.circle),
                    ),
                    SizedBox(
                        height: 12.h,
                        child: const VerticalDivider(
                          thickness: 1.0,
                          color: AppColors.colorWhite,
                        )),
                    GestureDetector(
                      child: Container(
                        height: 6.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(color: AppColors.colorWhite)),
                        alignment: Alignment.center,
                        child: Text(
                          "Parent",
                          style: AppFont.mediumBoldColorWhite_20,
                        ),
                      ),
                      onTap: () async {
                        //Using CategorySelectProvider here
                        cspObj.selectType("PARENT");
                        Navigator.pushNamed(context, enterPhonenumber);
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
