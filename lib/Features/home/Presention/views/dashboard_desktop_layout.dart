import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Row(
      children: [Expanded(child: CustomDrawer(),), ],
    );
  }
}