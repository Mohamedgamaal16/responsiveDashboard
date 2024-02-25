import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Data/all_expenses_item_model.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/all_expense_item.dart';
import 'package:responsive_dashboard/core/utils/images.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});
  static List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        icon: Assets.imagesBalance,
        title: 'Balance',
        subtitle: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        icon: Assets.imagesIncome,
        title: 'Income',
        subtitle: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        icon: Assets.imagesExpenses,
        title: 'Expenses',
        subtitle: 'April 2022',
        price: r'$20,129')
  ];

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  int? activeIndex ;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllExpensesItemList.items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      return  Expanded(child: Padding(
        padding: const EdgeInsets.only(right:12.0),
        child: GestureDetector( onTap: () {
          updateIdex(index);
        },child: AllExpensesItem(allExpensesItemModel: item,isActive: activeIndex==index,)),
      ));
    }).toList());
  }
  
  void updateIdex(int index) {
    setState(() {
      activeIndex=index;
    });
  }
}
