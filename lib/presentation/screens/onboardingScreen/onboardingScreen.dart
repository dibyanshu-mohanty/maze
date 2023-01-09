import 'package:card_swiper/card_swiper.dart';
import 'package:maze/presentation/screens/onboardingScreen/screenone.dart';
import 'package:maze/presentation/screens/onboardingScreen/screenthree.dart';
import 'package:maze/presentation/screens/onboardingScreen/screentwo.dart';
import 'package:maze/theme/coreimport.dart';


class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Widget> onBoardScreens = [
    OnboardScreenOne(),
    OnboardScreenTwo(),
    OnboardScreenThree(),
  ];

  late PageController _dotsController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dotsController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _dotsController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Swiper(
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
      ),
    );
  }
}
