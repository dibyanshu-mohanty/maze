import 'package:maze/theme/coreimport.dart';

class DarkThemedSectionTitle extends StatelessWidget {
  final String headerTitle;
  final bool isMainTitle;
  const DarkThemedSectionTitle({Key? key, required this.headerTitle, required this.isMainTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(headerTitle,style: isMainTitle ? AppFont.mediumBoldColorGrey1_18 : AppFont.mediumBoldColorGrey1_15,);
  }
}
