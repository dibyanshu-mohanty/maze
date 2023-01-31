import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreenBackground extends StatelessWidget {
  const SplashScreenBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100.h,
          width: 100.w,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                // Color(0xffEabfff),
                // Color.fromARGB(255, 144, 59, 187),
                Color.fromARGB(255, 106, 14, 151),
                Color.fromARGB(255, 66, 2, 98),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
