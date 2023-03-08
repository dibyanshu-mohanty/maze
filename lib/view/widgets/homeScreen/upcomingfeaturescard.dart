import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/theme/coreimport.dart';

import '../../../routes.dart';

class UpcomingFeatureCard extends StatelessWidget {
  const UpcomingFeatureCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
        width: 100.w,
        height: deviceWidth < 350 ? 20.h : 20.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                width: 80.w,
                height: 18.h,
                margin: const EdgeInsets.fromLTRB(
                    Dimens.margin15, Dimens.margin10, 0.0, Dimens.margin10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.margin10),
                ),
                child: GestureDetector(
                  onTap: () {
                    //Navigator.pushNamed(context, vsTournamentScreen);
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(Dimens.margin10),
                      child: Image.asset(
                        "assets/images/homeScreen/ic_features.png",
                        fit: BoxFit.cover,
                      )),
                ),
              );
            }));
  }
}
