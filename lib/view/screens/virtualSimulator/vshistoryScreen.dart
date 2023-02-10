import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utils/baseappbar.dart';
import '../../widgets/virtualSimulator/historyStockComponent.dart';
import 'vsAppScreenBackground.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const VsAppScreenBackground(),
          ListView(
            children: [
              SizedBox(
                height: 2.h,
              ),
              BaseAppBar(
                title: "History",
                appBar: AppBar(),
                mLeftAction: Navigator.of(context).pop,
              ),
              for (int i = 0; i < 3; i++) ...[
                const HistoryStock(),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
