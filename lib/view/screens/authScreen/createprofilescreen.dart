import 'package:maze/theme/coreimport.dart';
import '../../utils/appscreenbackground.dart';
import '../../widgets/authScreen/addphotofield.dart';
import '../../widgets/authScreen/detailsTextField.dart';
import '../../widgets/authScreen/pickgendertile.dart';

class CreateProfileScreen extends StatelessWidget {
  CreateProfileScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(_nameController.text);
    return  Scaffold(
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
                    Text("Profile Info",style: AppFont.regularColorWhite_18,),
                    const SizedBox(height: Dimens.margin20,),
                    const AddPhotoField(),
                    const SizedBox(height: Dimens.margin30),
                    DetailsTextField(controller: _nameController,hintTextTitle: "Enter Your Name",prefixIcon: Icons.person_outline,),
                    DetailsTextField(controller: _emailController,hintTextTitle: "Enter You Email", prefixIcon: Icons.email_outlined,),
                Container(
                    width: 100.w,
                    height: 40,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(0.0,10.0,6.0,14.0),
                    // padding: const EdgeInsets.symmetric(vertical: Dimens.margin6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: AppColors.colorWhite, width: 1.0)
                    ),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      enabled: false,
                      onChanged: (value){
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.calendar_month_sharp,color: AppColors.colorWhite,),
                        hintText: "Date of Birth",
                        hintStyle: AppFont.regularColorWhite_14,
                      ),
                    )
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      PickGenderTile(gender: "Male"),
                      PickGenderTile(gender: "Female"),
                    ],
                  ),
                    const   SizedBox(height: Dimens.margin15,),
                    GestureDetector(
                      onTap: (){
                      },
                      child: Center(
                        child: Container(
                          width: 18.w,
                          height: 18.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(color: AppColors.colorWhite,width: 1.0)
                          ),
                          alignment: Alignment.center,
                          child: Icon(Icons.check,color: AppColors.colorWhite,),
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
