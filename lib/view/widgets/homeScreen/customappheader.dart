import 'package:flutter/cupertino.dart';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';



class CustomAppHeader extends StatelessWidget {
  const CustomAppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(4.w,2.h,0,1.h),
      child: ListTile(
        leading: SizedBox(
          width: 28.w,
          child: Row(
            children: [
              Image.asset(AppImages.ic_logomain, height: 4.h,),
              SizedBox(width: Dimens.margin20),
              Text("Maze",style: AppFont.mediumBoldColorWhite_20,),
            ],
          ),
        ),
        trailing: SizedBox(
          width: 20.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(child: const Icon(CupertinoIcons.person,size: 20,color: AppColors.colorWhite,)),
              const SizedBox(width: Dimens.margin10,),
              GestureDetector(child: const Icon(CupertinoIcons.bell,size: 20,color: AppColors.colorWhite,)),
            ],
          ),
        ),
      ),
    );
  }
}



