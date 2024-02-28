import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/transaction_history_header.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/transaction_history_list.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionHistoryHeader(),
        TransactionHistoryList(),
      ],
    );
  }
}
