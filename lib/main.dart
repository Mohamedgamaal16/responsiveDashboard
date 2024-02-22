import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveDashboard());
}


class ResponsiveDashboard extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: const ResponsiveDashBoardBody(),
    );
  }
}