import 'package:intl/intl.dart';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/controller/providers/profile/profileprovider.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/utils/uithemes/snackbarmessages.dart';
import 'package:provider/provider.dart';
import '../../../model/profile/service/addprofile.dart';
import '../../../routes.dart';
import '../../utils/appscreenbackground.dart';
import '../../widgets/authScreen/addphotofield.dart';
import '../../widgets/authScreen/detailsTextField.dart';
import '../../widgets/authScreen/pickgendertile.dart';

class CreateProfileScreen extends StatefulWidget {
  CreateProfileScreen({Key? key}) : super(key: key);

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _dobController = TextEditingController();

  String gender = "";

  RegExp emailRegEx = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  RegExp nameRegEx = RegExp(r"^[a-zA-Z]", caseSensitive: false);

  Future<DateTime?> pickBirthDate() async{
    return await showDatePicker(context: context, initialDate: DateTime(2008), firstDate: DateTime(1960), lastDate: DateTime(2019),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.colorGolden,
              onPrimary: AppColors.colorGrey2,
              onSurface: AppColors.colorBlack,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.colorBlack, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },);
  }

  Future<void> registerProfile(ProfileProvider prfObj) async{
    if(_nameController.text.isEmpty || !nameRegEx.hasMatch(_nameController.text)){
      messageSnackBar(context, "Please Enter Valid Name");
      return ;
    } else if(_emailController.text.isEmpty || !emailRegEx.hasMatch(_emailController.text)){
      messageSnackBar(context, "Please Enter Valid Email");
      return ;
    } else if(_dobController.text.isEmpty){
      messageSnackBar(context, "Please Pick Valid DOB");
      return ;
    } else if(gender.isEmpty){
      messageSnackBar(context, "Please Pick a Gender");
      return ;
    } else {
        FocusScope.of(context).unfocus();
        await prfObj.profileRequest(_nameController.text, _emailController.text, gender, _dobController.text, context);
        if(prfObj.newProfile.name.isNotEmpty){
          Navigator.pushReplacementNamed(context, mainFrame);
        } else {
          return ;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    final prfObj = Provider.of<ProfileProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          const AppScreenBackground(),
          Container(
            margin: const EdgeInsets.fromLTRB(40.0, 70.0, 40.0, 0.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile Info",
                      style: AppFont.regularColorWhite_18,
                    ),
                    // const SizedBox(
                    //   height: Dimens.margin20,
                    // ),
                    //const AddPhotoField(),
                    const SizedBox(height: Dimens.margin30),
                    DetailsTextField(
                      controller: _nameController,
                      hintTextTitle: "Enter Your Name",
                      prefixIcon: Icons.person_outline,
                    ),
                    DetailsTextField(
                      controller: _emailController,
                      hintTextTitle: "Enter You Email",
                      prefixIcon: Icons.email_outlined,
                    ),
                    GestureDetector(
                      onTap: () async{
                        DateTime? pickedBirthDate = await pickBirthDate();
                        if(pickedBirthDate == null){
                          messageSnackBar(context, "Invalid Birth Date");
                          return ;
                        }
                        _dobController.text = DateFormat('dd-MM-yyyy').format(pickedBirthDate);
                      },
                      child: Container(
                          width: 100.w,
                          height: 45,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.fromLTRB(0.0,0.0, 6.0, 14.0),
                          padding: const EdgeInsets.symmetric(vertical: Dimens.margin6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: AppColors.colorWhite, width: 1.0)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                            controller: _dobController,
                            style: AppFont.regularColorWhite_18.copyWith(letterSpacing: 0.1),
                            enabled: false,
                            onChanged: (value) {},
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: const Icon(
                                Icons.calendar_month_sharp,
                                color: AppColors.colorWhite,
                              ),
                              hintText: "Date of Birth",
                              hintStyle: AppFont.regularColorWhite_14,
                            ),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                gender = "MALE";
                              });
                            },
                            child: AnimatedContainer(
                                width: 35.w,
                                height: 40,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.fromLTRB(0.0,10.0,6.0,14.0),
                                // padding: const EdgeInsets.symmetric(vertical: Dimens.margin6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(color: AppColors.colorWhite, width: 1.0),
                                  color: gender == "MALE" ? AppColors.colorWhite : AppColors.colorTransparent,
                                ),
                                duration: Duration(milliseconds: 700),
                                curve: Curves.decelerate,
                                child: Text("Male",style:gender == "MALE" ? AppFont.regularColorBlack : AppFont.regularColorWhite_12,)
                            ),),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                gender = "FEMALE";
                              });
                            },
                            child: AnimatedContainer(
                                width: 35.w,
                                height: 40,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.fromLTRB(0.0,10.0,6.0,14.0),
                                // padding: const EdgeInsets.symmetric(vertical: Dimens.margin6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: AppColors.colorWhite, width: 1.0),
                                  color: gender == "FEMALE" ? AppColors.colorWhite : AppColors.colorTransparent,
                                ),
                                duration: Duration(milliseconds: 700),
                                curve: Curves.decelerate,
                                child: Text("Female",style:gender == "FEMALE" ? AppFont.regularColorBlack : AppFont.regularColorWhite_12,)
                            ),),
                      ],
                    ),
                    const SizedBox(
                      height: Dimens.margin15,
                    ),
                    GestureDetector(
                      onTap: () async{
                        await registerProfile(prfObj);
                      },
                      child: Center(
                        child: Container(
                          width: 18.w,
                          height: 18.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                  color: AppColors.colorWhite, width: 1.0)),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.check,
                            color: AppColors.colorWhite,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
