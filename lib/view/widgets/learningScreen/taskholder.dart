import 'dart:math';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../utils/learningScreen/uiconstants.dart';

class TaskThumbnail extends StatefulWidget {
  final String taskType;
  final bool isLocked;
  final String taskName;
  TaskThumbnail({
    Key? key,
    required this.isLocked,
    required this.taskType,
    required this.taskName,
  }) : super(key: key);

  @override
  State<TaskThumbnail> createState() => _TaskThumbnailState();
}

class _TaskThumbnailState extends State<TaskThumbnail> {
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    bool isSmall = MediaQuery.of(context).size.width < 320;
    return Column(
      children: [
        widget.isLocked
            ? Badge(
                position: BadgePosition.bottomEnd(),
                badgeContent: Image.asset(
                  isCompleted
                      ? AppImages.ic_completedCheckIcon
                      : AppImages.ic_lockedIcon,
                  height: 25,
                  width: 25,
                ),
                badgeColor: AppColors.colorTransparent,
                elevation: 0,
                child: Stack(
                  children: [
                    CircleAvatar(
                        backgroundColor: AppColors.colorGrey7,
                        radius: isSmall ? 25.0 : 30.0,
                        child: Center(
                          child: Image.asset(
                            taskImages[widget.taskType]!,
                            height: 50,
                            width: 50,
                          ),
                        )),
                    CircleAvatar(
                      backgroundColor: AppColors.colorBlack.withOpacity(0.3),
                      radius: isSmall ? 25.0 : 30.0,
                    ),
                  ],
                ),
              )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    isCompleted = true;
                  });
                },
                child: Badge(
                  position: BadgePosition.bottomEnd(),
                  badgeContent: Image.asset(
                    isCompleted
                        ? AppImages.ic_completedCheckIcon
                        : widget.isLocked
                            ? AppImages.ic_lockedIcon
                            : AppImages.ic_progressIcon,
                    height: 25,
                    width: 25,
                  ),
                  badgeColor: AppColors.colorTransparent,
                  elevation: 0,
                  child: CircleAvatar(
                      backgroundColor: AppColors.colorGrey7,
                      radius: isSmall ? 30.0 : 35.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container( 
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.colorLightBlue2.withOpacity(0.3),
                                spreadRadius: 25.0,
                                blurRadius: 20.0
                              )
                            ]
                          ),
                          child: Center(
                            child: Image.asset(
                              taskImages[widget.taskType]!,
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                      )),
                ),
              ),
        AppSizers.height5,
        Text(
          widget.taskName,
          style: AppFont.regularColorWhite_15,
        )
      ],
    );
  }
}
