import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/my_card_body.dart';

class MyCardsPageViews extends StatelessWidget {
  const MyCardsPageViews({super.key, required this.pageController});
  final PageController pageController ;

  @override
  Widget build(BuildContext context) {
    return  ExpandablePageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
  itemCount: 3,
  itemBuilder: (context, index) {
    return const MyCardBody() ;
  },
);
  }
}