import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/theme/app_colors.dart';
// import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

// import '../../../controller/providers/virtualSimulator/userAllTournmentsProvider.dart';
import '../../../theme/app_font.dart';
import '../../../theme/app_images.dart';
import '../../widgets/virtualSimulator/ShareStockComponentPortFolioScreen.dart';
import 'vsAppScreenBackground.dart';
import '../../widgets/virtualSimulator/portfolioComponent.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const VsAppScreenBackground(),
        ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //Component 1
            const VSSComponent1(),
            Container(
              child: ListTile(
                leading: Text(
                  "Holdings",
                  style: AppFont.regularColorWhite_15,
                ),
                trailing: Text(
                  "View All",
                  style: AppFont.lightColorgrey_10,
                ),
              ),
            ),
            //Component
            for (int i = 0; i < 3; i++) ...[
              const ShareStockComponentPortfolioScreen(),
              SizedBox(
                height: 1.h,
              ),
            ],
            Align(
              child: GestureDetector(
                child: Container(
                  width: 55.w,
                  // height: 5.h,
                  margin: EdgeInsets.symmetric(vertical: 2.h),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColors.colorLightBlue3.withOpacity(0.3),
                        AppColors.colorWhite.withOpacity(0.0),
                      ],
                    ),
                    border: Border.all(
                      color: AppColors.colorPink.withOpacity(0.4),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(28),
                    ),
                  ),
                  child: ListTile(
                    // leading: SizedBox(width: 0.5.w),
                    title: Text(
                      "History",
                      style: AppFont.regularColorWhite_13,
                      textAlign: TextAlign.center,
                    ),
                    trailing: const Icon(
                      Icons.arrow_right_alt_outlined,
                      color: AppColors.colorWhite,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, historyScreen);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
