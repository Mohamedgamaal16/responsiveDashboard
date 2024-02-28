import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/my_card_section.dart';

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
          child: const MyCardSection()),
    ]);
  }
}
