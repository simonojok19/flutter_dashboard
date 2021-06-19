import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

final sections = [
  PieChartSectionData(
    color: primaryColor,
    value: 25,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Color(0xff26e5ff),
    value: 20,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Color(0xffffcf26),
    value: 10,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Color(0xffee2727),
    value: 15,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 15,
    showTitle: false,
    radius: 25,
  ),
];

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PieChart(
          PieChartData(
            sectionsSpace: 0,
            centerSpaceRadius: 70,
            startDegreeOffset: -90,
            sections: sections,
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "29.1",
                style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  height: 0.5,
                ),
              ),
              Text("of 128GB"),
            ],
          ),
        ),
      ],
    );
  }
}
