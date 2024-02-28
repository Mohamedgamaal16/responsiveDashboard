import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/all_expenses.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/quick_invoice_view.dart';

class ExpensesAndInvoiceViewBody extends StatelessWidget {
  const ExpensesAndInvoiceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [AllExpensesview(),SizedBox(height:24 ,),Expanded(child: QuickInvoiceView())],);
  }
}