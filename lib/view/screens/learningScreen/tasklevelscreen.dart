import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/utils/appscreenbackground.dart';
import 'package:maze/view/widgets/learningScreen/moduleholder.dart';
import 'package:maze/view/widgets/learningScreen/taskholder.dart';

class TaskLevelScreen extends StatefulWidget {
  const TaskLevelScreen({Key? key}) : super(key: key);

  @override
  State<TaskLevelScreen> createState() => _TaskLevelScreenState();
}

class _TaskLevelScreenState extends State<TaskLevelScreen> {
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
            child: TaskThumbnail(
                taskType: 'read',
                isLocked: false,
                taskName: "Task 1"),
          ),
          Positioned(
            bottom: isSmall ? 19.h : 20.h,
            right: isSmall ? 15.w : 12.w,
            child: TaskThumbnail(
                taskType: 'read',
                isLocked: true,
                taskName: "Task 2"),
          ),
          Positioned(
            bottom: 30.h,
            left: isSmall ? 7.w : 4.w,
            child: TaskThumbnail(
                taskType: 'read',
                isLocked: true,
                taskName: "Task 3"),
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
            child: TaskThumbnail(
                taskType: 'video',
                isLocked: true,
                taskName: "Task 4"),
          ),
          Positioned(
            bottom: isSmall ? 55.h : 57.h,
            left: 35.w,
            child: TaskThumbnail(
                taskType: 'video',
                isLocked: true,
                taskName: "Task 5"),
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
            child: TaskThumbnail(
                taskType: 'games',
                isLocked: true,
                taskName: "Task 6"),
          ),
          Positioned(
            top: 5.h,
            left: 5.w,
            child: Container(
              alignment: Alignment.topLeft,
              child: Icon(Icons.arrow_back_ios,color: AppColors.colorWhite,),
            ),
          ),
        ],
      ),
    );
  }
}
