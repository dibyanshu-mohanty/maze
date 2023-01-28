import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/widgets/learningScreen/quizoption.dart';
import 'package:provider/provider.dart';

import '../../../../controller/providers/learning/quizprovider.dart';
import '../../../widgets/learningScreen/learningProgressIndicator.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  int currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<QuizProvider>(context, listen: false);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Dimens.margin10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LearningProgressIndicator(
              indicatorTitle: "Question 2",
              indicatorProgress: data.percent,
              cardsLeft: currentIndex),
          SizedBox(
            height: 55.h,
            child: Swiper(
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: AppColors.colorGrey2.withOpacity(0.8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10,
                        sigmaY: 10,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        color: AppColors.colorWhite.withOpacity(0.1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.question_mark,
                              size: Dimens.margin50,
                              color: AppColors.colorWhite,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: Dimens.margin5,horizontal: Dimens.margin20),
                              child: Text(
                                "Q${4-currentIndex+1}) Which of these is a function of the stock exchange?",
                                style: AppFont.mediumBoldColorWhite_15,
                              ),
                            ),
                            Column(
                              children: List.generate(
                                  4,
                                  (index) => QuizOption(
                                      answerNumber: index,
                                      answerPrompt: "Hello World",
                                      correctAnswerIndex: 2)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemWidth: 100.w,
              itemHeight: 100.h,
              itemCount: 5,
              layout: SwiperLayout.TINDER,
              curve: Curves.decelerate,
              loop: false,
              index: currentIndex,
              onIndexChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
                data.calculatePercent(currentIndex, 4);
              },
            ),
          ),
          AppSizers.height10
        ],
      ),
    );
  }
}
