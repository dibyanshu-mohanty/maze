import 'package:card_swiper/card_swiper.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/onboardingScreen/screenone.dart';
import 'package:maze/view/screens/onboardingScreen/screenthree.dart';
import 'package:maze/view/screens/onboardingScreen/screentwo.dart';
import '../../utils/appscreenbackground.dart';

class IntroductionDetailsScreen extends StatefulWidget {
  IntroductionDetailsScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionDetailsScreen> createState() => _IntroductionDetailsScreenState();
}

class _IntroductionDetailsScreenState extends State<IntroductionDetailsScreen> {
  List<Widget> onBoardScreens = const [
    OnboardScreenOne(),
    OnboardScreenTwo(),
    OnboardScreenThree(),
  ];

  late PageController _dotsController;
  final SwiperController _pageController = SwiperController();

  @override
  void initState() {
    super.initState();
    _dotsController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _dotsController.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemCount: 3,
        controller: _pageController,
        itemBuilder: (BuildContext context,int index){
          return onBoardScreens[index];
        },
        itemWidth: 100.w,
        itemHeight: 100.h,
        layout: SwiperLayout.DEFAULT,
        indicatorLayout: PageIndicatorLayout.SLIDE,
        pagination: const SwiperPagination(
          builder: DotSwiperPaginationBuilder(
              color: Colors.white, activeColor: AppColors.colorBlack1,size: 10.0,activeSize: 15.0
          ),
        ),
        curve: Curves.easeInBack,
        loop: false,
        allowImplicitScrolling: true,
      ),
    );
  }
}
