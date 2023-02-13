import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/controller/providers/auth/authprovider.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes.dart';
import '../../utils/appscreenbackground.dart';
import 'enterphonescreen.dart';

class CategorySelectScreen extends StatefulWidget {
  const CategorySelectScreen({Key? key}) : super(key: key);

  @override
  State<CategorySelectScreen> createState() => _CategorySelectScreenState();
}

class _CategorySelectScreenState extends State<CategorySelectScreen> {
  bool isTeenSelected = false;
  bool isParentSelected = false;

  @override
  Widget build(BuildContext context) {
    final cspObj = Provider.of<CategorySelectProvider>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: [
          const AppScreenBackground(),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                child: AnimatedContainer(
                  height: 6.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: isTeenSelected ? AppColors.colorWhite : AppColors.colorTransparent,
                      border: Border.all(color: AppColors.colorWhite)),
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 700),
                  curve: Curves.fastOutSlowIn,
                  child: Text(
                    "Teen",
                    style: isTeenSelected ? AppFont.mediumBoldColorBlack_20 : AppFont.mediumBoldColorWhite_20,
                  ),
                ),
                onTap: () {
                  setState(() {
                    isTeenSelected = true;
                    isParentSelected = false;
                  });
                  cspObj.selectType("TEEN");
                  Future.delayed(Duration(milliseconds: 700),(){
                    Navigator.pushNamed(context, enterPhonenumber);
                  });
                },
                      ),
                SizedBox(
                    height: 12.h,
                    child: const VerticalDivider(
                      thickness: 1.0,
                      color: AppColors.colorWhite,
                    )),
                AnimatedContainer(
                  width: 12.w,
                  height: 12.w,
                  duration: Duration(milliseconds: 600),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.colorWhite, width: 1.0),
                      color: isTeenSelected || isParentSelected
                          ? AppColors.colorTransparent
                          : AppColors.colorWhite,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                    height: 12.h,
                    child: const VerticalDivider(
                      thickness: 1.0,
                      color: AppColors.colorWhite,
                    )),
                GestureDetector(
                        child: AnimatedContainer(
                          height: 6.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: isParentSelected ? AppColors.colorWhite : AppColors.colorTransparent,
                              border: Border.all(color: AppColors.colorWhite)),
                          alignment: Alignment.center,
                          duration: Duration(milliseconds: 600),
                          child: Text(
                            "Parent",
                            style: isParentSelected ? AppFont.mediumBoldColorBlack_20 : AppFont.mediumBoldColorWhite_20,
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            isTeenSelected = false;
                            isParentSelected = true;
                          });
                          cspObj.selectType("PARENT");
                          Future.delayed(Duration(milliseconds: 800),(){
                            Navigator.pushNamed(context, enterPhonenumber);
                          });
                        },
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
