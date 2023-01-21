import 'dart:math';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ModuleThumbnail extends StatelessWidget {
  final double percentComplete;
  final bool isLocked;
  final String imagePath;
  final String moduleName;
  const ModuleThumbnail({Key? key,
    required this.imagePath,
    required this.isLocked,
    required this.percentComplete,
    required this.moduleName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSmall = MediaQuery
        .of(context)
        .size
        .width < 320;
    return Column(
      children: [
        !isLocked ?
        Transform.rotate(
          angle: 90 * pi/ 180,
          child: Badge(
            alignment: Alignment.bottomRight,
            badgeContent: Transform.rotate(
                angle: -90 * pi /180,
                child: Image.asset(AppImages.ic_completedCheckIcon,height: 35,width: 35,)),
            badgeColor: AppColors.colorTransparent,
            elevation: 0,
            child: CircularPercentIndicator(
              radius: isSmall ? 35.0 : 40.0,
              lineWidth: 4.0,
              percent: percentComplete,
              animation: true,
              animationDuration: 2000,
              curve: Curves.decelerate,
              progressColor: AppColors.colorLightGreen,
              center : Transform.rotate(
                angle: -90 * pi/ 180,
                child: CircleAvatar(
                  backgroundColor: AppColors.colorGrey7, radius: isSmall ? 25.0 : 30.0,
                  child: Image.asset(imagePath,fit: BoxFit.cover,),
                ),
              ),
            ),
          ),
        )
        : Badge(
          position: BadgePosition.bottomEnd(),
          badgeContent: Image.asset(AppImages.ic_lockedIcon,height: 30,width: 30,),
          badgeColor: AppColors.colorTransparent,
          elevation: 0,
          child: CircleAvatar(
            backgroundColor: AppColors.colorGrey7, radius: isSmall ? 25.0 : 30.0,
            child: const Center(child: Icon(CupertinoIcons.lock,color: AppColors.colorLightBlue2,))
          ),
        ),
        AppSizers.height5,
        Text(moduleName,style: AppFont.regularColorWhite_15,)
      ],
    );
  }
}
