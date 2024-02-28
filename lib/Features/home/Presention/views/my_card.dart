import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/dots_indicator.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/my_cards_page_views.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  late PageController pageController;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyCardsPageViews(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        DotsIndicator(
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}
