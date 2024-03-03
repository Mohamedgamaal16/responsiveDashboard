import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/my_card_and_income_view_body.dart';

class MyCardAndIncomeView extends StatelessWidget {
  const MyCardAndIncomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 1199
        ? const MyCardAndIncomeViewBody()
        :const SingleChildScrollView(child: MyCardAndIncomeViewBody()) ;
  }
}
