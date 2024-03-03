import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Data/income_section_item_model.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/income_section_item.dart';

class IncomeSectionItemList extends StatelessWidget {
  const IncomeSectionItemList({super.key});
  static List<IncomeSectionItemModel> items = [
    const IncomeSectionItemModel(
        color: Color(0xFF208BC7), title: 'Design service', ratio: '40%'),
    const IncomeSectionItemModel(
        color: Color(0xFF4DB7F2), title: 'Design product', ratio: '25%'),
    const IncomeSectionItemModel(
        color: Color(0xFF064060), title: 'Product royalti', ratio: '20%'),
    const IncomeSectionItemModel(
        color: Color(0xFFE2DECD), title: 'Others', ratio: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
   log(MediaQuery.of(context).size.width.toString());
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return IncomeSectionItem(incomeSectionItemModel: items[index]);
      },
    );
  }
}
