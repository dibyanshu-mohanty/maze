import 'package:maze/theme/coreimport.dart';

class DarkThemedSectionTitle extends StatelessWidget {
  final String headerTitle;
  final bool isMainTitle;
  const DarkThemedSectionTitle({Key? key, required this.headerTitle, required this.isMainTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: Dimens.margin15),
        child: Text(headerTitle,style: isMainTitle ? AppFont.mediumBoldColorGrey10_18 : AppFont.mediumBoldColorGrey10_15,));
  }
}
