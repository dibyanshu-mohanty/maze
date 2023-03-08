import '../../../theme/coreimport.dart';

class GradientDivider extends StatelessWidget {
  const GradientDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height:Dimens.margin2,
      margin: const EdgeInsets.symmetric(vertical: Dimens.margin10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.colorPink
                  .withOpacity(1),
              AppColors.colorPurple2.withOpacity(0.0)
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(20.0)
      ),);
  }
}
