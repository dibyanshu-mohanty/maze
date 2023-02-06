// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';
// import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';

class ProductCard extends StatelessWidget {
  final image;
  final titleText;
  final subtitleText;
  final description;

  const ProductCard(
      {super.key,
      this.image,
      this.titleText,
      this.subtitleText,
      this.description});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // margin: EdgeInsets.fromLTRB(16, 41, 16, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xff292c33)),
            color: Color(0xff292c33),
          ),
          child: ListTile(
            //tileColor: Color(0xff292C33),
            leading: Image.asset(image),
            title: Text(
              titleText,
              style: AppFont.mediumBoldColorWhite_12,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitleText,
                  style: AppFont.lightColorWhite_10,
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  description,
                  style: AppFont.lightColorWhite_8,
                ),
              ],
            ),
            trailing: Column(
              children: [
                Container(
                  width: 10.w,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color(0xffFF7171),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "New",
                    style: AppFont.mediumBoldColorWhite_10,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        // Positioned(
        //     top: 0,
        //     left: 82.w,
        //     child: Container(
        //       width: 10.w,
        //       padding: EdgeInsets.all(4),
        //       decoration: BoxDecoration(
        //         color: Color(0xffFF7171),
        //         borderRadius: BorderRadius.only(
        //           topRight: Radius.circular(20),
        //           bottomLeft: Radius.circular(10),
        //         ),
        //       ),
        //       child: Text(
        //         "New",
        //         style: AppFont.mediumBoldColorWhite_10,
        //         textAlign: TextAlign.center,
        //       ),
        //     )),
      ],
    );
  }
}
