import 'dart:ui';

import 'package:maze/theme/coreimport.dart';


class YaroAcademyCard extends StatelessWidget {
  const YaroAcademyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 15.h,
      margin: const EdgeInsets.symmetric(vertical: Dimens.margin10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimens.margin10),
        child: Stack(
          children: [
            SizedBox(
                width: 100.w,
                height: 15.h,
                child: Image.asset("assets/images/homeScreen/Yaroacademy Bg.png",fit: BoxFit.cover,)),
            Positioned(
              bottom: 0,
              left: 0,
              height: 8.h,
              width: 100.w,
              child: ClipRect(
                child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),child: Container(
                      color: AppColors.colorWhite.withOpacity(0.2)),),
              ),
            ),
            Positioned(
              bottom: 3.5.h,
              left: 6.w,
              child: CircleAvatar(backgroundImage: AssetImage("assets/images/homeScreen/Yaroacademy Profile.png"),radius: 5.w,),
            ),
            Positioned(
              bottom: 1.5.h,
              left: 22.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yaro Academy",style: AppFont.mediumBoldColorLightBlue_17,),
                  Text("Learn from the best",style: AppFont.mediumBoldColorWhite_14,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
