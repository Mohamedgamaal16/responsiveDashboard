import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';

class MyCardSectionHeader extends StatelessWidget {
  const MyCardSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'My card',
          style: 
            AppStyles.styleSemiBold16(context),
          
        ),
      ],
    );
  }
}
