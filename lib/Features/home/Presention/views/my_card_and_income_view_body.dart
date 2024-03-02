import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/card_and_transaction_section.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/income_section.dart';

class MyCardAndIncomeViewBody extends StatelessWidget {
  const MyCardAndIncomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( children: [
      Container(
        padding: const EdgeInsets.all(24),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const CardAndTransactionSection(),
      ),const SizedBox(height: 24,),
      Container(
          padding: const EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const IncomeSection(),
      )
    ]);
  }
}
