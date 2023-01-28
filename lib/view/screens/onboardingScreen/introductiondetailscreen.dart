import 'package:card_swiper/card_swiper.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/onboardingScreen/screenone.dart';
import 'package:maze/view/screens/onboardingScreen/screenthree.dart';
import 'package:maze/view/screens/onboardingScreen/screentwo.dart';


class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  List<Widget> onBoardScreens = const [
    OnboardScreenOne(),
    OnboardScreenTwo(),
    OnboardScreenThree(),
  ];

  late PageController _dotsController;

  @override
  void initState() {
    super.initState();
    _dotsController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _dotsController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Swiper(
        itemBuilder: (context, index) {
          return onBoardScreens[index];
        },
        itemWidth: 100.w,
        itemHeight: 100.h,
        itemCount: 3,
        layout: SwiperLayout.DEFAULT,
        pagination: const SwiperPagination(
          builder: SwiperPagination.dots,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: Dimens.margin15),
        ),
        curve: Curves.easeInBack,
        loop: false,
        //indicatorLayout: PageIndicatorLayout.DROP,
        // control:SwiperControl(
        //   color: AppColors.colorWhite
        // ),
      ),
    );
  }
}
