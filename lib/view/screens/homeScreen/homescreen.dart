import 'package:maze/theme/coreimport.dart';
import '../../utils/homeScreen/darkthemedsectiontitle.dart';
import '../../utils/staticuielements.dart';
import '../../widgets/homeScreen/customappheader.dart';
import '../../widgets/homeScreen/progressindicator.dart';
import '../../widgets/homeScreen/upcomingfeaturescard.dart';
import '../../widgets/homeScreen/mazeacademycard.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomAppHeader(),
          Container(
            width: 100.w,
            height: 17.h,
            margin: EdgeInsets.fromLTRB(4.w,Dimens.margin10,4.w,Dimens.margin5),
            padding: const EdgeInsets.symmetric(horizontal: Dimens.margin15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DarkThemedSectionTitle(headerTitle: "Your total worth",isMainTitle: true,),
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
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            padding: const EdgeInsets.symmetric(horizontal: Dimens.margin10),
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
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            padding: const EdgeInsets.symmetric(horizontal: Dimens.margin10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                DarkThemedSectionTitle(headerTitle: "Your Progress", isMainTitle: false,),
                ProgressIndicatorContainer(),
                SizedBox(height: Dimens.margin10),
                DarkThemedSectionTitle(headerTitle: "Start something new", isMainTitle: false,),
                YaroAcademyCard(),
                SizedBox(height: Dimens.margin10),
                DarkThemedSectionTitle(headerTitle: "Upcoming Features", isMainTitle: false,),
                UpcomingFeatureCard(),
                SizedBox(height: Dimens.margin10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
