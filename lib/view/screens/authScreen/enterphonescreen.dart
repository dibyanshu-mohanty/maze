import 'package:sizer/sizer.dart';
import 'package:maze/theme/coreimport.dart';

import '../../utils/appscreenbackground.dart';
import '../../widgets/authScreen/otpfields.dart';

class EnterPhoneNumber extends StatefulWidget {
  const EnterPhoneNumber({Key? key}) : super(key: key);

  @override
  State<EnterPhoneNumber> createState() => _EnterPhoneNumberState();
}

class _EnterPhoneNumberState extends State<EnterPhoneNumber> {
  bool _isDone = false;
  bool _phoneEntered = false;
  final fieldTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    fieldTextController.text = "+91";
    return Scaffold(
      body: Stack(
        children: [
          const AppScreenBackground(),
          Container(
            margin: const EdgeInsets.fromLTRB(40.0, 70.0, 40.0, 0.0),
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
                      height: 5.h,
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0.0,10.0,6.0,10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19.0),
                          border: Border.all(color: AppColors.colorWhite, width: 1.0)
                      ),
                      //padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width:22.w,
                            height: 5.h,
                            //alignment: Alignment.center,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              controller: fieldTextController,
                              maxLines: 1,
                              enabled: false,
                              style: AppFont.regularColorWhite_18.copyWith(letterSpacing: 0.1 * 18.w),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(vertical: 1.7.h,horizontal: 2.w),
                                  constraints: BoxConstraints(maxHeight: 5.h),
                              ),
                            ),
                          ),
                          SizedBox(
                            width:50.w,
                            height: 5.h,
                            //alignment: Alignment.center,
                            child: Center(
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                maxLines: 1,
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
                                  contentPadding: EdgeInsets.symmetric(vertical: 1.7.h),
                                  constraints: BoxConstraints(maxHeight: 5.h)
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
      ),
    );
  }
}
