import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:12.0),
      child: Row(
        children: [
          Text(
            'All Expenses',
            style: AppStyles.styleSemiBold20(context),
          ),const Spacer(),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    'Monthly',
                    style: AppStyles.styleMedium16(context),
                  ),
                  Transform.rotate(
                      angle: -1.57079633,
                      child: const Icon(Icons.arrow_back_ios_new_outlined))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
