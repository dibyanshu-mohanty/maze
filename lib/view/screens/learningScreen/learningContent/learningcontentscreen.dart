import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:maze/controller/providers/learning/readingprovider.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/widgets/learningScreen/learningProgressIndicator.dart';
import 'package:provider/provider.dart';

class LearningContentScreen extends StatefulWidget {
  const LearningContentScreen({Key? key}) : super(key: key);

  @override
  State<LearningContentScreen> createState() => _LearningContentScreenState();
}

class _LearningContentScreenState extends State<LearningContentScreen> {

  String content = "A stock is a form of security that indicates the holder has proportionate ownership in the issuing corporation and is sold predominantly on stock exchanges."
      "Corporations issue stock to raise funds to operate their businesses."
      "There are two main types of stock: common and preferred."
      "Historically, stocks have outperformed most other investments over the long run";

  int currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    final contentData = content.split('.').map((x) => "- $x\n").reduce((x, y) => "$x$y");
    final data = Provider.of<ReadingProvider>(context,listen: false);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Dimens.margin10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LearningProgressIndicator(
              indicatorTitle: "Task 5", indicatorProgress: data.percent, cardsLeft: currentIndex),
          SizedBox(
            height: 55.h,
            child: Swiper(
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: AppColors.colorGrey2.withOpacity(0.8),
                    border: Border.all(color: AppColors.colorGrey8,width: 1)
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
                            AppSizers.height20,
                            Text("Stocks",style: AppFont.mediumBoldColorWhite_15,),
                            AppSizers.height40,
                            Expanded(
                              child: Markdown(
                                data: contentData,
                                styleSheet: MarkdownStyleSheet(
                                  p: AppFont.mediumBoldColorWhite_15,
                                  listBullet: AppFont.mediumBoldColorWhite_15
                                ),
                              ),
                            ),
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
