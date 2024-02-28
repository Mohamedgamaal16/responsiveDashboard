import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Data/transaction_history_item_model.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key, required this.transactionHistoryItemModel});
  final TransactionHistoryItemModel transactionHistoryItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:12.0),
      child: Card(
        elevation: 0,
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(
            transactionHistoryItemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            transactionHistoryItemModel.date,
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xFFAAAAAA)),
          ),
          trailing: Text(transactionHistoryItemModel.amount,
              style: transactionHistoryItemModel.isWithdrawal
                  ? AppStyles.styleSemiBold20(context)
                      .copyWith(color: const Color(0xFFF3735E))
                  : AppStyles.styleSemiBold20(context).copyWith(
                      color: const Color(0xFF7CD87A),
                    )),
        ),
      ),
    );
  }
}
