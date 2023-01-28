
import 'package:maze/theme/coreimport.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LearningProgressIndicator extends StatelessWidget {
  final String indicatorTitle;
  final double indicatorProgress;
  final int cardsLeft;
  const LearningProgressIndicator({Key? key,required this.indicatorTitle, required this.indicatorProgress, required this.cardsLeft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(indicatorTitle,style: AppFont.regularColorWhite_12),
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
                percent: indicatorProgress,
                barRadius: Radius.circular(10.0),
              )
          ),
        ),
        AppSizers.height5,
        Container(
          padding: const EdgeInsets.only(right: 10.0),
          alignment: Alignment.centerRight,
          child: Text("$cardsLeft Cards Left",style: AppFont.regularColorGrey8_12),
        ),
      ],
    );
  }
}
