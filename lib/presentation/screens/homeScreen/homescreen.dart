import 'package:maze/presentation/utils/constants.dart';
import 'package:maze/presentation/utils/darkthemedsectiontitle.dart';
import 'package:maze/presentation/widgets/homeScreen/customappheader.dart';
import 'package:maze/presentation/widgets/homeScreen/progressindicator.dart';
import 'package:maze/theme/coreimport.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppHeader(),
          Container(
            width: 100.w,
            height: 15.h,
            margin: EdgeInsets.fromLTRB(4.w,Dimens.margin30,4.w,Dimens.margin10),
            padding: EdgeInsets.symmetric(horizontal: Dimens.margin15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DarkThemedSectionTitle(headerTitle: "Your total worth",isMainTitle: true,),
                Text("\u{20B9} 5678.76",style: AppFont.mediumBoldColorWhite_25,),
                 Container(
                   height: 5.h,
                   width: 20.w,
                   //padding: const EdgeInsets.symmetric(vertical: Dimens.margin3,horizontal: Dimens.margin10),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10.0),
                     color: AppColors.colorRed1,
                   ),
                   alignment: Alignment.center,
                   child: Text("0.43%",style: AppFont.mediumBoldColorRed_18,),
                 )
              ],
            ),
          ),
          Container(
            width: 100.w,
            height: 10.h,
            margin: EdgeInsets.only(left: 4.w),
            padding: EdgeInsets.symmetric(horizontal: Dimens.margin10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(3, (index) => Expanded(
                child: Container(
                  height: 42.0,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.colorGrey,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  alignment: Alignment.center,
                  child: homeScreenHeaderCategory[index],
                ),
              )),
            ),
          ),
          Container(
            width: 100.w,
            height: 100.h,
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            padding: const EdgeInsets.only(left: Dimens.margin17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DarkThemedSectionTitle(headerTitle: "Your Progess", isMainTitle: false,),
                ProgressIndicatorContainer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
