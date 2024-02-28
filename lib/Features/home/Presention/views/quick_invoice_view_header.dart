import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';

class QuickInvoiceViewHeader extends StatelessWidget {
  const QuickInvoiceViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Icon(
            Icons.hdr_plus_outlined,
            color: Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
