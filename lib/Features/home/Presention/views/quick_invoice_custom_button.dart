import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';

class QuickInvoiceCustomButton extends StatelessWidget {
  const QuickInvoiceCustomButton(
      {super.key, required this.title, required this.color, required this.textColor});
  final String title;
  final Color color,textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 45,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),backgroundColor: color, elevation: 0,),
        onPressed: () {},
        child: Text(title,style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),),
      ),
    );
  }
}
