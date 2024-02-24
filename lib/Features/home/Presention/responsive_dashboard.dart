import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/core/utils/adbative_layouts.dart';

class ResponsiveDashBoardBody extends StatelessWidget {
  const ResponsiveDashBoardBody({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
