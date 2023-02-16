import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:maze/controller/providers/learning/quizprovider.dart';
import 'package:maze/controller/providers/learning/readingprovider.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/rewards/refer.dart';
import 'package:maze/view/screens/rewards/reward_detail.dart';
import 'package:maze/view/screens/rewards/reward_page.dart';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/controller/providers/profile/profileprovider.dart';
import 'package:maze/routes.dart';
import 'package:provider/provider.dart';
import 'controller/providers/auth/authprovider.dart';
import 'package:maze/view/screens/errorScreen/errorscreen.dart';
import 'package:maze/view/screens/goldScreen/digitalgoldscreen.dart';
import 'package:maze/view/screens/profile/profilescreen.dart';
import 'controller/providers/virtualSimulator/userAllTournmentsProvider.dart';
import 'view/screens/authScreen/categoryselectscreen.dart';
import 'view/screens/authScreen/createprofilescreen.dart';
import 'view/screens/authScreen/enterphonescreen.dart';
import 'view/screens/homeScreen/homescreen.dart';
import 'view/screens/learningScreen/learningContent/learningcontentscreen.dart';
import 'view/screens/learningScreen/learninglevelscreen.dart';
import 'view/screens/learningScreen/readingtaskscreen.dart';
import 'view/screens/learningScreen/tasklevelscreen.dart';
import 'view/screens/learningScreen/videoscreen.dart';
import 'view/screens/mainframe.dart';
import 'view/screens/onboardingScreen/introductiondetailscreen.dart';
import 'view/screens/onboardingScreen/onboardingscreen.dart';
import 'view/screens/splashScreen/splashscreen.dart';
import 'view/screens/virtualSimulator/vsScrollSplashScreens.dart';
import 'view/widgets/authScreen/otpfields.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
      DevicePreview(enabled: !kReleaseMode, builder: (_) => const YaroApp()));
}

class YaroApp extends StatelessWidget {
  const YaroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ReadingProvider()),
        ChangeNotifierProvider(create: (context) => QuizProvider()),
        ChangeNotifierProvider(create: (context) => CategorySelectProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ProfileProvider()),
        ChangeNotifierProvider(create: (context) => TournamentProvider()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          title: 'Maze',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.colorBlack,
            //canvasColor: AppColors.colorWhite,
          ),
          onGenerateRoute: MyRoutes.generateRoute,
          initialRoute: splashScreen,
          // home: VsSplashScreens(),
        ),
      ),
    );
  }
}
