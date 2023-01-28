import 'package:flutter/material.dart';
import 'package:maze/theme/coreimport.dart';

class profileDetails extends StatelessWidget {
  final text;
  final icon;
  const profileDetails({super.key, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(22, 0, 18, 0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Material(
            color: Color(0xffFFC371),
            shape: const CircleBorder(),
            child: InkWell(
              //splashColor: Colors.black,
              onTap: () {},
              customBorder: const CircleBorder(),
              child: Ink(
                decoration: const BoxDecoration(shape: BoxShape.circle),
                height: 35,
                width: 35,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Text(
          text,
          style: AppFont.regularColorWhite_18,
        )
      ],
    );
  }
}
