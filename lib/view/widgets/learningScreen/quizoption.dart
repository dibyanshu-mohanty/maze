import '../../../theme/coreimport.dart';

class QuizOption extends StatefulWidget {
  final String answerPrompt;
  final int answerNumber;
  final int correctAnswerIndex;
  QuizOption(
      {Key? key,
      required this.answerNumber,
      required this.answerPrompt,
      required this.correctAnswerIndex})
      : super(key: key);

  @override
  State<QuizOption> createState() => _QuizOptionState();
}

class _QuizOptionState extends State<QuizOption> {
  final List<String> _choices = ["A)", "B)", "C)", "D)"];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 100.w,
        margin: const EdgeInsets.symmetric(vertical: Dimens.margin5,horizontal: Dimens.margin20),
        padding: const EdgeInsets.symmetric(vertical: Dimens.margin10, horizontal: Dimens.margin12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200.0),
          color: AppColors.colorGolden,
        ),
        child: Text("${_choices[widget.answerNumber]}  ${widget.answerPrompt}",style: AppFont.mediumBoldColorBlack_16,),
      ),
    );
  }
}
