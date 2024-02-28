import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/custom_drawer.dart';
import 'package:responsive_dashboard/Features/home/Presention/expenses_and_invoice_view.dart';
import 'package:responsive_dashboard/Features/home/Presention/my_card_and_income.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 2, child: ExpensesAndInvoiceView()),
        SizedBox(
          width: 32,
        ),
        Expanded(child: MyCardAndIncomeView())
      ],
    );
  }
}
