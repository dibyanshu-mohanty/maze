import 'package:badges/badges.dart';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/utils/appscreenbackground.dart';
import 'package:maze/view/widgets/learningScreen/moduleholder.dart';

class LearningLevelScreen extends StatefulWidget {
  const LearningLevelScreen({Key? key}) : super(key: key);

  @override
  State<LearningLevelScreen> createState() => _LearningLevelScreenState();
}

class _LearningLevelScreenState extends State<LearningLevelScreen> {
  bool isLocked = true;

  @override
  Widget build(BuildContext context) {
    bool isSmall = MediaQuery.of(context).size.width < 320;
    return Scaffold(
      body: Stack(
        children: [
          const AppScreenBackground(),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              alignment: Alignment.center,
              child:
                  Image.asset("assets/images/learningScreen/mapVertical.png")),
          Positioned(
            bottom: isSmall ? 5.h : 4.h,
            left: isSmall ? 35.w : 38.w,
            child: const ModuleThumbnail(
                imagePath: AppImages.ic_learningModule2,
                isLocked: false,
                percentComplete: 1,
                moduleName: "Module 1"),
          ),
          Positioned(
            bottom: isSmall ? 19.h : 20.h,
            right: isSmall ? 15.w : 12.w,
            child: const ModuleThumbnail(
                imagePath: AppImages.ic_learningModule3,
                isLocked: true,
                percentComplete: 1,
                moduleName: "Module 2"),
          ),
          Positioned(
            bottom: 30.h,
            left: isSmall ? 7.w : 4.w,
            child: const ModuleThumbnail(
                imagePath: AppImages.ic_learningModule4,
                isLocked: true,
                percentComplete: 1,
                moduleName: "Module 3"),
          ),
          Positioned(
            bottom: 45.h,
            right: isSmall
                ? isLocked
                    ? 14.w
                    : 10.w
                : isLocked
                    ? 10.w
                    : 6.w,
            child: const ModuleThumbnail(
                imagePath: AppImages.ic_learningModule5,
                isLocked: true,
                percentComplete: 1,
                moduleName: "Module 4"),
          ),
          Positioned(
            bottom: isSmall ? 55.h : 57.h,
            left: 35.w,
            child: const ModuleThumbnail(
                imagePath: AppImages.ic_learningModule6,
                isLocked: true,
                percentComplete: 1,
                moduleName: "Module 5"),
          ),
          Positioned(
            bottom: isSmall
                ? isLocked
                    ? 77.h
                    : 75.h
                : isLocked
                    ? 78.h
                    : 76.h,
            right: 50.w,
            child: const ModuleThumbnail(
                imagePath: AppImages.ic_learningModule7,
                isLocked: true,
                percentComplete: 1,
                moduleName: "Module 6"),
          ),
          Container(
            height: 40.h,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.colorBlack,
                    AppColors.colorBlack.withOpacity(0.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                color: AppColors.colorWhite),
          ),
        ],
      ),
    );
  }
}
