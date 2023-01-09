import 'package:maze/presentation/screens/authScreen/categoryselectscreen.dart';
import 'package:maze/presentation/screens/authScreen/createprofilescreen.dart';
import 'package:maze/presentation/screens/authScreen/enterphonescreen.dart';
import 'package:maze/presentation/screens/homeScreen/homescreen.dart';
import 'package:maze/presentation/screens/onboardingScreen/onboardingScreen.dart';
import 'package:maze/theme/coreimport.dart';

void main() {
  runApp(const MazeApp());
}

class MazeApp extends StatelessWidget {
  const MazeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,orientation,deviceType) => MaterialApp(
        title: 'Maze',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         scaffoldBackgroundColor: AppColors.colorBlack1,
          //canvasColor: AppColors.colorWhite,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
