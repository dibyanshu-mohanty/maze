import 'dart:math';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../utils/staticUiThemes/staticuielements.dart';

class TaskThumbnail extends StatefulWidget {
  final String taskType;
  final bool isLocked;
  TaskThumbnail({
    Key? key,
    required this.isLocked,
    required this.taskType,
  }) : super(key: key);

  @override
  State<TaskThumbnail> createState() => _TaskThumbnailState();
}

class _TaskThumbnailState extends State<TaskThumbnail> {
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    bool isSmall = MediaQuery.of(context).size.width < 320;
    return GestureDetector(
        onTap: () {
          setState(() {
            isCompleted = true;
          });
        },
        child: Container(
            width: 80.w,
            color: AppColors.colorTransparent,
            child: Center(
              child: Container(
                width: 40.w,
                height: 40.w,
                decoration: BoxDecoration(
                  color: AppColors.colorGrey2,
                  borderRadius: BorderRadius.circular(Dimens.margin10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      taskImages[widget.taskType]!,
                      height: 20.w,
                      width: 20.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.colorLightGreen,
                        borderRadius: BorderRadius.circular(Dimens.margin8),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: Dimens.margin15,vertical: Dimens.margin6),
                      child: Text("Start",style: AppFont.regularColorWhite_12,),
                    )
                  ],
                ),
              ),
            )),
      );
  }
}
