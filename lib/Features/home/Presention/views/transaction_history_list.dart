import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Data/transaction_history_item_model.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/transaction_history_item.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({super.key});
  static List<TransactionHistoryItemModel> items = const [
    TransactionHistoryItemModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022  ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionHistoryItemModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022  ',
        amount: r'$2000',
        isWithdrawal: false),
    TransactionHistoryItemModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022  ',
        amount: r'$20,2342',
        isWithdrawal: false)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return TransactionHistoryItem(
          transactionHistoryItemModel: items[index],
        );
      },
    );
  }
}
