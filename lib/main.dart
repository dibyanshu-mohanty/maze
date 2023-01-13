import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:maze/presentation/screens/authScreen/categoryselectscreen.dart';
import 'package:maze/presentation/screens/authScreen/createprofilescreen.dart';
import 'package:maze/presentation/screens/authScreen/enterphonescreen.dart';
import 'package:maze/presentation/screens/homeScreen/homescreen.dart';
import 'package:maze/presentation/screens/onboardingScreen/onboardingScreen.dart';
import 'package:maze/theme/coreimport.dart';

import 'domain/services/db.dart';

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
    return Sizer(
      builder: (context,orientation,deviceType) => MaterialApp(
        title: 'Yaro',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         scaffoldBackgroundColor: AppColors.colorBlack,
          //canvasColor: AppColors.colorWhite,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
