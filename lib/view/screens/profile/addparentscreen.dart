import 'package:maze/view/utils/appscreenbackground.dart';
import 'package:share_plus/share_plus.dart';

import '../../../theme/coreimport.dart';
import '../../utils/baseappbar.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class AddParentScreen extends StatelessWidget {
  const AddParentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AppScreenBackground(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BaseAppBar(
                  title: "Add Parent",
                  appBar: AppBar(),
                  mLeftAction: () {
                    Navigator.pop(context);
                  }),
              AppSizers.height50,
              Text("John Doe", style: AppFont.regularColorWhite_15),
              AppSizers.height20,
              Container(
                height: 20.h,
                //alignment: Alignment.center,
                child: PrettyQr(
                  typeNumber: 3,
                  size: 120,
                  data: 'https://www.google.ru',
                  errorCorrectLevel: QrErrorCorrectLevel.H,
                  roundEdges: true,
                  elementColor: AppColors.colorWhite,
                ),
              ),
              Text("Scan this QR or Send the invite \n link to your parents",textAlign: TextAlign.center, style: AppFont.regularColorWhite_15),
              GestureDetector(
                onTap: (){
                  Share.share('check out my website https://example.com');
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: Dimens.margin40),
                  padding: const EdgeInsets.symmetric(horizontal: Dimens.margin35,vertical: Dimens.margin10),
                  decoration: BoxDecoration(
                      color: AppColors.colorGolden,
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Text("Send Invite",style: AppFont.mediumBoldColorBlack_16,textAlign: TextAlign.center,),
                ),
              ),
            ],
          ),
        ],
      ),
    );;
  }
}
