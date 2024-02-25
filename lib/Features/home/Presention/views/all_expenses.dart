import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/all_expenses_header.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/all_expenses_item_list.dart';

class AllExpensesview extends StatelessWidget {
  const AllExpensesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(padding: const EdgeInsets.only(left:20,top: 20,bottom: 20,right: 8),
        color: Colors.white,
        child: const Column(
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 16,
            ),
          AllExpensesItemList()],
        ));
  }
}
