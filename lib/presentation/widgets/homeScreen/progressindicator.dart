import 'package:maze/theme/coreimport.dart';


class ProgressIndicatorContainer extends StatelessWidget {
  const ProgressIndicatorContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 20.h,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
                Text("60%", style: AppFont.boldColorGreen_22,)
            ],
          )
        ],
      ),
    );
  }
}
