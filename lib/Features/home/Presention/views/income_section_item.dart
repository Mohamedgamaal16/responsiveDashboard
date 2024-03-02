import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Data/income_section_item_model.dart';
import 'package:responsive_dashboard/core/utils/styles.dart';

class IncomeSectionItem extends StatelessWidget {
  const IncomeSectionItem({required this.incomeSectionItemModel, super.key});
  final IncomeSectionItemModel incomeSectionItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 40),
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
            color: incomeSectionItemModel.color, shape: const OvalBorder()),
      ),
      title: Text(
        incomeSectionItemModel.title,
        style: AppStyles.styleMedium16(context),
      ),
      trailing: Text(
        incomeSectionItemModel.ratio,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
