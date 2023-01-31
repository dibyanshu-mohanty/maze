import 'package:flutter/material.dart';

import '../../../../theme/app_font.dart';

class DemoCryptoComponent1 extends StatelessWidget {
  final title;
  final amount;
  const DemoCryptoComponent1(
      {super.key, this.title = "Portfolio Value", this.amount = "1,00,000"});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppFont.regularColorGrey1,
        ),
        Text(
          "₹ $amount",
          style: AppFont.regularColorGrey1_15,
        ),
      ],
    );
  }
}
