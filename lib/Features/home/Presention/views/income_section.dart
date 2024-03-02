import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/income_header.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/income_section_item_list.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/income_section_piechart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IncomeHeader(),
        Row(
          children: [
            Expanded(child: IncomeSectionPieChart()),
            Expanded(child: IncomeSectionItemList())
          ],
        )
      ],
    );
  }
}
