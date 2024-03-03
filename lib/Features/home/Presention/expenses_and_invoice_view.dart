import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/expenses_and_invoice_view_body.dart';

class ExpensesAndInvoiceView extends StatelessWidget {
  const ExpensesAndInvoiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 1199
        ? const ExpensesAndInvoiceViewBody()
        :const SingleChildScrollView(child: ExpensesAndInvoiceViewBody())  ;
  }
}
