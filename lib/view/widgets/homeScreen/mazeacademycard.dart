import 'dart:ui';

import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';


class YaroAcademyCard extends StatelessWidget {
  const YaroAcademyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 100.w,
      height: deviceWidth < 350 ? 12.h : 10.h,
      margin: const EdgeInsets.symmetric(vertical: Dimens.margin10),
      padding: const EdgeInsets.symmetric(
          vertical: Dimens.margin5, horizontal: Dimens.margin15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.margin10),
        color: AppColors.colorGrey2,
      ),
      alignment: Alignment.center,
      child: ListTile(
        leading: Image.asset(AppImages.ic_logomain,),
        title: Text("Maze Club",style: AppFont.mediumBoldColorWhite_18,),
        subtitle: Text("Learn From the Best",style: AppFont.lightColorWhite_12,),
        trailing: const Icon(Icons.arrow_forward,color: AppColors.colorWhite,),
      )
    );
  }
}
