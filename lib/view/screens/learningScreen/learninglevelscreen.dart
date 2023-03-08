import 'package:badges/badges.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:maze/controller/providers/learning/moduleprovider.dart';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/learningScreen/tasklevelscreen.dart';
import 'package:maze/view/utils/appscreenbackground.dart';
import 'package:maze/view/widgets/learningScreen/moduleholder.dart';
import 'package:provider/provider.dart';

import '../../../constants/constRouteNames.dart';
import '../../utils/staticUiThemes/staticuielements.dart';

class LearningLevelScreen extends StatelessWidget {
  const LearningLevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Provider.of<ModuleProvider>(context,listen: false).getAllModules(context),
        builder: (context,snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: SpinKitFadingCircle(color: AppColors.colorWhite,),);
          }
          return Consumer<ModuleProvider>(
            child: Container(
              width: 100.w,
              margin: const EdgeInsets.symmetric(horizontal: Dimens.margin20,vertical: Dimens.margin20),
              child : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(AppImages.ic_EmptyModuleAnimation),
                    AppSizers.height20,
                    Text("No Modules Found",style: AppFont.mediumBoldColorWhite_15,),
                  ]
              ),
            ),
            builder: (context,moduleData,child) =>
            moduleData.modules.isEmpty
                ? child!
                : Stack(
                children: [
                  const AppScreenBackground(),
                  Container(
                    alignment: Alignment.center,
                    child: const DottedLine(
                      direction: Axis.vertical,
                      lineLength: double.infinity,
                      lineThickness: 1.0,
                      dashLength: 4.0,
                      dashColor: AppColors.colorWhite,
                      dashRadius: 0.0,
                      dashGapLength: 8.0,
                      dashGapColor: AppColors.colorTransparent,
                      dashGapRadius: 0.0,
                    ),
                  ),
                    ListView(
                        reverse: true,
                        children: List.generate(moduleData.modules.length, (index) => Container(
                          margin: index == moduleData.modules.length -1 ? EdgeInsets.zero : EdgeInsets.only(top: 7.h,bottom: 2.h),
                          child: (index % 2 !=0)
                              ?Row(
                            mainAxisSize: MainAxisSize.max                         ,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, taskLevel,arguments: {
                                    "moduleName" : moduleData.modules[index].name,
                                    "moduleDescription" : moduleData.modules[index].description,
                                    "moduleId" : moduleData.modules[index].id,
                                  });
                                },
                                child: Container(
                                  width: 30.w,
                                    margin: EdgeInsets.only(right: moduleData.modules[index].unlocked ? Dimens.margin10 : Dimens.margin0,left: Dimens.margin30),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: Dimens.margin10,horizontal: Dimens.margin8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimens.margin10),
                                      color: AppColors.colorGrey2,
                                    ),
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Module ${index + 1}",
                                          style: AppFont.regularColorWhite_15,
                                          softWrap: true,
                                          textAlign: TextAlign.center,
                                        ),
                                        AppSizers.height5,
                                        Text(
                                          "View More",
                                          style: AppFont.regularColorBlue_12.copyWith(decoration: TextDecoration.underline),
                                        ),
                                      ],
                                    )),
                              ),
                              Expanded(
                                child: ModuleThumbnail(
                                    imagePath: moduleImages[index][moduleData.modules[index].index.toString()],
                                    isLocked: !moduleData.modules[index].unlocked,
                                    percentComplete: 1,
                                    moduleName: moduleData.modules[index].name),
                              ),
                              SizedBox(width: 38.w,),
                            ],
                          )
                              : Row(
                            mainAxisSize: MainAxisSize.max                         ,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 38.w,),
                              Expanded(
                                child: ModuleThumbnail(
                                    imagePath:  moduleImages[index][moduleData.modules[index].index.toString()],
                                    isLocked: !moduleData.modules[index].unlocked,
                                    percentComplete: 1,
                                    moduleName: moduleData.modules[index].name),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, taskLevel,arguments: {
                                    "moduleName" : moduleData.modules[index].name,
                                    "moduleDescription" : moduleData.modules[index].description,
                                    "moduleId" : moduleData.modules[index].id,
                                  });
                                },
                                child: Container(
                                    width: 30.w,
                                    margin: EdgeInsets.only(left: moduleData.modules[index].unlocked ? Dimens.margin10 : Dimens.margin0,right: Dimens.margin30),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: Dimens.margin12, horizontal: Dimens.margin8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimens.margin10),
                                      color: AppColors.colorGrey2,
                                    ),
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Module ${index + 1}",
                                          style: AppFont.regularColorWhite_15,
                                          softWrap: true,
                                          textAlign: TextAlign.center,
                                        ),
                                        AppSizers.height5,
                                        Text(
                                          "View More",
                                          style: AppFont.regularColorBlue_12.copyWith(decoration: TextDecoration.underline),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                        )),
                  Positioned(
                    top: 0.0,
                    child: IgnorePointer(
                      ignoring: true,
                      child: Container(
                        height: 40.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              AppColors.colorBlack,
                              AppColors.colorBlack.withOpacity(0.5),
                              AppColors.colorBlack.withOpacity(0.0),
                            ],begin: Alignment.topCenter,end: Alignment.bottomCenter)
                        ),
                      ),
                    ),
                  ),
                ],
    ),
          );
        }
      ),);
}
}
