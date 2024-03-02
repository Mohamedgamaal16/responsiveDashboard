import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/dashboard_tablet_layout_body.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(child: DashBoardTabletLayoutBody());
  }
}