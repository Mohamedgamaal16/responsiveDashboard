import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/custom_drawer.dart';
import 'package:responsive_dashboard/Features/home/Presention/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/Features/home/Presention/dashboard_tablet_layout.dart';
import 'package:responsive_dashboard/Features/home/Presention/views/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/core/utils/adbative_layouts.dart';

class ResponsiveDashBoardBody extends StatefulWidget {
  const ResponsiveDashBoardBody({super.key});

  @override
  State<ResponsiveDashBoardBody> createState() =>
      _ResponsiveDashBoardBodyState();
}

class _ResponsiveDashBoardBodyState extends State<ResponsiveDashBoardBody> {
  // This widget is the root of your application.
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.of(context).size.width < 600
          ? AppBar(
              backgroundColor: const Color(0xFFF1F1F1),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer:
          MediaQuery.of(context).size.width < 600 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
