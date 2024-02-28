import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/my_card.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/my_card_section_header.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardSectionHeader(),
        SizedBox(
          height: 20,
        ),
        MyCard()
      ],
    );
  }
}
