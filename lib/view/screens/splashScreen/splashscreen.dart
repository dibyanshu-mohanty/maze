// ignore_for_file: use_build_context_synchronously
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/controller/providers/auth/authprovider.dart';
import 'package:maze/model/constants/networkoptions.dart';
import 'package:maze/view/utils/uithemes/snackbarmessages.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../routes.dart';
import '../../../theme/coreimport.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  AuthProvider loginObj = AuthProvider();

  Future<void> validateRequest(AuthProvider loginObj) async{
    loginObj = Provider.of<AuthProvider>(context,listen:false);
    bool isConnected = await NetworkOptions().checkConnection();
      if(isConnected){
        final refs = await SharedPreferences.getInstance();
        String? jwt = refs.getString('jwt');
        if(jwt == null || jwt.isEmpty){
          Navigator.pushReplacementNamed(context, onboardingScreen);
        } else {
          await loginObj.checkRequest(context);
          if(loginObj.jwt.isEmpty){
            Navigator.pushReplacementNamed(context, categorySelect);
          } else {
            Navigator.pushReplacementNamed(context, mainFrame);
          }
        }
      } else {
        messageSnackBar(context, "No Internet");
        return ;
      }
  }

  @override
  void initState() {
    super.initState();
    validateRequest(loginObj);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
            height: 100.h,
            width: 100.w,
            child: Center(
              child: Image.asset(AppImages.ic_logomain,fit: BoxFit.cover,),
            ),
          ),
    );
  }
}
