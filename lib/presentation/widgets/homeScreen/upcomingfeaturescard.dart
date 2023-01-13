import 'package:maze/theme/coreimport.dart';

class UpcomingFeatureCard extends StatelessWidget {
  const UpcomingFeatureCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 13.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context,index) {
          return Container(
            width: 60.w,
              height: 12.h,
              margin: const EdgeInsets.fromLTRB(0,Dimens.margin10,Dimens.margin10,Dimens.margin10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.margin10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimens.margin10),
                  child: Image.asset("assets/images/homeScreen/features.png",fit: BoxFit.cover,)));
        }
      )
    );
  }
}
