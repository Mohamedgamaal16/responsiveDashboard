
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/my_card_section.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/transaction_history_section.dart';

class CardAndTransactionSection extends StatelessWidget {
  const CardAndTransactionSection({super.key});

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
