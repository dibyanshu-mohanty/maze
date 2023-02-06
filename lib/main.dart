import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

import 'package:maze/controller/providers/learning/quizprovider.dart';
import 'package:maze/controller/providers/learning/readingprovider.dart';

import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/rewards/refer.dart';
import 'package:maze/view/screens/rewards/reward_detail.dart';
import 'package:maze/view/screens/rewards/reward_page.dart';
import 'package:provider/provider.dart';
import 'controller/providers/auth/authprovider.dart';

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
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          title: 'Maze',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.colorBlack,
            //canvasColor: AppColors.colorWhite,
          ),
          // onGenerateRoute: MyRoutes.genrateRoute,
          // initialRoute: onbardingScreen,
          home: RewardDetail(),
          // home: const MainFrame(),
        ),
      ),
    );
  }
}
