import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/all_expenses.dart';

class ExpensesAndInvoiceViewBody extends StatelessWidget {
  const ExpensesAndInvoiceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Expanded(child: AllExpensesview())],);
  }
}