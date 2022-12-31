import 'package:flutter/material.dart';
import 'package:maze/presentation/screens/authScreen/enterphonescreen.dart';
import 'package:maze/presentation/screens/onboardingScreen/onboardingScreen.dart';
import 'package:sizer/sizer.dart';

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
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: EnterPhoneNumber(),
      ),
    );
  }
}
