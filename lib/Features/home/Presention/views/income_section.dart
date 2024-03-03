import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/income_header.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/income_section_item_list.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/income_section_piechart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const IncomeHeader(),
        Row(
          children: [
            const Expanded(child: IncomeSectionPieChart()),
            adaptiveIncomeSectionItemList(context),
          ],
        )
      ],
    );
  }
}

Widget adaptiveIncomeSectionItemList(BuildContext context) {
  if (MediaQuery.of(context).size.width > 1199 &&
      MediaQuery.of(context).size.width < 1375) {
    return const Text('');
  } else {
    return const Expanded(child: IncomeSectionItemList());
  }
}




