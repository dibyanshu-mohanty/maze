import 'package:maze/theme/coreimport.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function mLeftAction;
  final AppBar appBar;
  final List<Widget> actions;

  const BaseAppBar(
      {Key? key,
        required this.title,
        required this.appBar,
        this.actions = const [],
        required this.mLeftAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.colorTransparent,
      leading: InkWell(
        child: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.colorWhite,
        ),
        onTap: () {
            mLeftAction();
        },
      ),
      centerTitle: true,
      title: Text(
        title,
        style: AppFont.semiBoldColorWhite_15,
        textAlign: TextAlign.center,
      ),
      elevation: 0,
      actions: actions ?? [],
      //actions: widgets,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
