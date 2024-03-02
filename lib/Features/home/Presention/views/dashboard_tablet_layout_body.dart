import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/custom_drawer.dart';
import 'package:responsive_dashboard/Features/home/Presention/dashboard_mobile_layout.dart';

class DashBoardTabletLayoutBody extends StatelessWidget {
  const DashBoardTabletLayoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child:  DashBoardMobileLayout(),
        ),SizedBox(
          width: 32,
        ),
      ],
    );
  }
}

