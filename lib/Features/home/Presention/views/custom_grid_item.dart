import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/custom_text_field.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';

class CustomgridItem extends StatelessWidget {
  const CustomgridItem({super.key, required this.title, required this.hint});
  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ), CustomTextField(hint: hint,)
      ],
    );
  }
}
