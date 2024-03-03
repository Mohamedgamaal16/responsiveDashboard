import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeSectionPieChart extends StatefulWidget {
  const IncomeSectionPieChart({super.key});

  @override
  State<IncomeSectionPieChart> createState() => _IncomeSectionPieChartState();
}

class _IncomeSectionPieChartState extends State<IncomeSectionPieChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            title: 'service 40%',
            showTitle: showTitleMethod(),
            radius: activeIndex == 0 ? 60 : 50,
            value: 40,
            color: const Color(0xFF208BC7),
          ),
          PieChartSectionData(
            title: 'product 25%',
            showTitle: showTitleMethod(),
            radius: activeIndex == 1 ? 60 : 50,
            value: 25,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            title: 'royalti 20%',
            showTitle: showTitleMethod(),
            radius: activeIndex == 2 ? 60 : 50,
            value: 20,
            color: const Color(0xFF064060),
          ),
          PieChartSectionData(
            title: 'Other 22%',
            showTitle: showTitleMethod(),
            radius: activeIndex == 3 ? 60 : 50,
            value: 22,
            color: const Color(0xFFE2DECD),
          )
        ]);
  }

  bool showTitleMethod() {
    if (MediaQuery.of(context).size.width > 400 &&
        MediaQuery.of(context).size.width < 500) {
      return true;
    } else if (MediaQuery.of(context).size.width > 1199 &&
        MediaQuery.of(context).size.width < 1375) {
      return true;
    } else {
      return false;
    }
  }
}
