
import 'package:maze/theme/coreimport.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TaskLearningProgressIndicator extends StatelessWidget {
  final int tasksCompleted;
  final int totalTasks;
  const TaskLearningProgressIndicator({Key? key,required this.tasksCompleted, required this.totalTasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text("Task $tasksCompleted/$totalTasks",style: AppFont.regularColorWhite_14),
        ),
        AppSizers.height5,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          alignment: Alignment.center,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: LinearPercentIndicator(
                backgroundColor: AppColors.colorGrey2,
                progressColor: AppColors.colorGolden,
                lineHeight: 8,
                percent: (tasksCompleted / totalTasks).toDouble(),
                barRadius: Radius.circular(10.0),
              )
          ),
        ),
        AppSizers.height5,
      ],
    );
  }
}
