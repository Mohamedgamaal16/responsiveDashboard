class TransactionHistoryItemModel {
  final String title, date, amount;
  final bool isWithdrawal;

 const TransactionHistoryItemModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
