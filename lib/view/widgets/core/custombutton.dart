import '../../../theme/coreimport.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final void Function() onPressed;
  final Widget child;
  const CustomButton({Key? key,required this.onPressed,required this.buttonColor,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100.w,
        margin: const EdgeInsets.symmetric(horizontal: Dimens.margin25,vertical: Dimens.margin10),
        padding: const EdgeInsets.symmetric(vertical: Dimens.margin12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.margin10),
          color: buttonColor
        ),
        child: child,
      ),
    );
  }
}
