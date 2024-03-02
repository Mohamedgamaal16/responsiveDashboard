import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/home/Presention/responsive_dashboard.dart';

void main() {
  runApp(const ResponsiveDashboard());
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveDashBoardBody(),
    );
  }
}
