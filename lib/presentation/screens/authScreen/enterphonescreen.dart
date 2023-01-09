import 'package:maze/presentation/utils/appscreenbackground.dart';
import 'package:maze/presentation/widgets/authScreen/otpfields.dart';
import 'package:sizer/sizer.dart';
import 'package:maze/theme/coreimport.dart';

class EnterPhoneNumber extends StatefulWidget {
  const EnterPhoneNumber({Key? key}) : super(key: key);

  @override
  State<EnterPhoneNumber> createState() => _EnterPhoneNumberState();
}

class _EnterPhoneNumberState extends State<EnterPhoneNumber> {
  bool _isDone = false;
  bool _phoneEntered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const AppScreenBackground(),
            Container(
              margin: const EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("verification",style: AppFont.regularColorWhite_18,),
                    const SizedBox(height: Dimens.margin20,),
                    Text(
                      _phoneEntered
                      ? "Please Enter the Verification \nCode Received."
                      : "Please Enter Your Phone \nNumber.",style: AppFont.mediumBoldColorWhite_18,),
                    const SizedBox(height: Dimens.margin40),
                    _phoneEntered
                    ? OTPField()
                    : Container(
                      width: 100.w,
                        height: 40,
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(0.0,10.0,6.0,10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19.0),
                            border: Border.all(color: AppColors.colorWhite, width: 1.0)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(19.0),
                              child: Container(
                                width: 18.w,
                                height: 40,
                                //padding: const EdgeInsets.symmetric(horizontal: Dimens.margin4),
                                decoration: BoxDecoration(
                                  color: AppColors.colorWhite,
                                  borderRadius: BorderRadius.circular(19.0),
                                ),
                                child: Center(child: Text("+91",style: AppFont.regularColorBlack_18.copyWith(letterSpacing: 0.025 * 18.w))),
                              ),
                            ),
                            SizedBox(width: Dimens.margin10,),
                            Expanded(
                              child: Container(
                                width:50.w,
                                height: 36,
                                padding: const EdgeInsets.symmetric(vertical: Dimens.margin6),
                                //alignment: Alignment.center,
                                child: TextField(
                                  textAlignVertical: TextAlignVertical.center,

                                  cursorHeight: 18.0,
                                  style: AppFont.regularColorWhite_18.copyWith(letterSpacing: 0.1 * 18.w),
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(10),
                                  ],
                                  onChanged: (value){
                                      if(value.length == 10){
                                        setState(() {
                                          _isDone = true;
                                        });
                                      } else {
                                        setState(() {
                                          _isDone = false ;
                                        });
                                      }
                                  },
                                  cursorColor: AppColors.colorWhite,
                                  cursorWidth: 0.5,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: Dimens.margin60),
                    GestureDetector(
                      onTap: (){
                        if(_isDone){
                          setState((){
                              _phoneEntered = true;
                          });
                        }
                      },
                      child: Center(
                        child: Container(
                          width: 18.w,
                          height: 18.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _isDone ? AppColors.colorWhite : Colors.transparent,
                            border: Border.all(color: AppColors.colorWhite,width: 1.0)
                          ),
                          alignment: Alignment.center,
                          child: Icon(Icons.arrow_forward,color:  _isDone ? AppColors.colorBlack : AppColors.colorWhite,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
