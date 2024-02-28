import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/my_card_section.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/transaction_history_section.dart';

class MyCardAndIncomeViewBody extends StatelessWidget {
  const MyCardAndIncomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: const EdgeInsets.all(24),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const FirstSection(),
      )
    ]);
  }
}

class FirstSection extends StatelessWidget {
  const FirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
        ),
        TransactionHistorySection(),
      ],
    );
  }
}
