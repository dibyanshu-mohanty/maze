import 'package:fluttertoast/fluttertoast.dart';
import '../../../theme/coreimport.dart';


messageSnackBar(
    BuildContext context,
    String title) async {

  FToast fToast = FToast();
  fToast.init(context);

  fToast.showToast(
    child: MessageSnackBar(title: title),
    gravity: ToastGravity.BOTTOM,
    toastDuration: const Duration(seconds: 2),
  );
}

class MessageSnackBar extends StatelessWidget {
  final String title;
  const MessageSnackBar({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.w,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: AppColors.colorGrey7                                               ,
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(3),
            child: const Image(
              image: AssetImage(
                AppImages.ic_logomain,
              ),
              height: 15,
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Text(
              title,
              style:  AppFont.mediumBoldColorWhite_15,
              maxLines: null,
            ),
          ),
        ],
      ),
    );
  }
}
