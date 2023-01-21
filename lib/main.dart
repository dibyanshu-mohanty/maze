import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:maze/controller/providers/learning/quizprovider.dart';
import 'package:maze/controller/providers/learning/readingprovider.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/homeScreen/homescreen.dart';
import 'package:maze/view/screens/learningScreen/learninglevelscreen.dart';
import 'package:maze/view/screens/learningScreen/readingtaskscreen.dart';
import 'package:maze/view/screens/learningScreen/tasklevelscreen.dart';
import 'package:maze/view/screens/learningScreen/videoscreen.dart';
import 'package:maze/view/screens/onboardingScreen/onboardingscreen.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder :(_)=>  const YaroApp()));
}

class YaroApp extends StatelessWidget {
  const YaroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ReadingProvider()),
        ChangeNotifierProvider(create: (context) => QuizProvider()),
      ],
      child: Sizer(
        builder: (context,orientation,deviceType) => MaterialApp(
          title: 'Maze',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
           scaffoldBackgroundColor: AppColors.colorBlack,
            //canvasColor: AppColors.colorWhite,
          ),
          home: const OnboardingScreen(),
        ),
      ),
    );
  }
}
