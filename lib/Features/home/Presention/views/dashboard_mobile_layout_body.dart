import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/expenses_and_invoice_view.dart';
import 'package:responsive_dashboard/Features/home/Presention/my_card_and_income.dart';

class DashBoardMobileLayoutbody extends StatelessWidget {
  const DashBoardMobileLayoutbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            child: Expanded(
              child: Column(
                        children: [
              Expanded(child: ExpensesAndInvoiceView()),
              Expanded(
                child: MyCardAndIncomeView(),
              )
                        ],
                      ),
            ))
      ],
    );
  }
}
