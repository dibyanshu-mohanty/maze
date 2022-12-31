import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppScreenBackground extends StatelessWidget {
  const AppScreenBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100.h,
          width: 100.w,
          child: Image.asset("assets/images/Rectangle 22.png",fit: BoxFit.fill,),
        ),
        Container(
          height: 100.h,
          width: 100.w,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY:200),
            child: Container(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
        ),
      ],
    );
  }
}
