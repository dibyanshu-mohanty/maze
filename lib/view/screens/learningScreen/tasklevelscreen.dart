import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/utils/appscreenbackground.dart';
import 'package:maze/view/utils/staticUiThemes/staticuielements.dart';
import 'package:maze/view/widgets/learningScreen/moduleholder.dart';
import 'package:maze/view/widgets/learningScreen/taskholder.dart';
import 'package:maze/view/widgets/learningScreen/tasklearningprogressindicator.dart';

import '../../utils/baseappbar.dart';

class TaskLevelScreen extends StatefulWidget {
  const TaskLevelScreen({Key? key}) : super(key: key);

  @override
  State<TaskLevelScreen> createState() => _TaskLevelScreenState();
}

class _TaskLevelScreenState extends State<TaskLevelScreen> {
  bool isLocked = true;
  var moduleData;

  @override
  void didChangeDependencies() {
    moduleData = ModalRoute.of(context)!.settings.arguments;
    super.didChangeDependencies();

  }

  @override
  Widget build(BuildContext context) {
    bool isSmall = MediaQuery.of(context).size.height < 750;
    return Scaffold(
      body: Stack(
        children: [
          const AppScreenBackground(),
          ListView(
            children: [
              BaseAppBar(
                  title: moduleData["moduleName"],
                  appBar: AppBar(),
                  mLeftAction: () {
                    Navigator.pop(context);
                  }),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: Dimens.margin16,vertical: Dimens.margin25),
                padding: const EdgeInsets.symmetric(horizontal: Dimens.margin20,vertical: Dimens.margin25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: AppColors.colorGrey2,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      moduleData["moduleDescription"],
                      style: AppFont.regularColorWhite_16,
                    ),
                    AppSizers.height20,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Task",
                          style: AppFont.mediumBoldColorGolden_14,
                        ),
                        AppSizers.height5,
                        Text(
                          "5 (2 Reading, 2 Video and 1 Game",
                          style: AppFont.lightColorWhite_12,
                        ),
                        AppSizers.height20,
                        Text(
                          "Rewards",
                          style: AppFont.mediumBoldColorGolden_14,
                        ),
                        AppSizers.height5,
                        Text(
                          "50 Coins",
                          style: AppFont.lightColorWhite_12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              AppSizers.height10,
              Container(
                margin: const EdgeInsets.symmetric(horizontal: Dimens.margin16),
                child: const TaskLearningProgressIndicator(
                  tasksCompleted: 2,
                  totalTasks: 5,
                ),
              ),
              AppSizers.height30,
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: true,
                    aspectRatio: 16/9,
                    viewportFraction: 0.5,
                  ),
                  items: tasks.map((e) => TaskThumbnail(isLocked: false, taskType: e.taskType)).toList(),
                ),

            ],
          ),
        ],
      ),
    );
  }
}
