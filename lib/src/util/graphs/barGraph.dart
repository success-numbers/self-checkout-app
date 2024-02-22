import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'graphTheme.dart';
import 'model/graphmodels.dart';

class BarChartView extends StatefulWidget {
  const BarChartView({Key? key, required this.series}) : super(key: key);

  final DataSeries series;

  @override
  State<BarChartView> createState() =>
      _BarChartWidgetState(series: this.series);
}

class _BarChartWidgetState extends State<BarChartView> {
  final DataSeries series;

  _BarChartWidgetState({required this.series});

  @override
  Widget build(BuildContext context) {
    final List fixedList =
        Iterable<int>.generate(series.dataPoints!.length).toList();

    return Card(
        color: Color(0xfff5f5f5),
        child: Container(
          padding: EdgeInsets.all(10),
          width: 300,
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.series.seriesDescription!,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w800)),
              Divider(
                height: 20,
                indent: 20,
                endIndent: 20,
                thickness: 3,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              AspectRatio(
                aspectRatio: 1.5,
                child: BarChart(
                  BarChartData(
                    barGroups: _chartGroups(fixedList),
                    borderData: FlBorderData(
                        border: const Border(
                            bottom: BorderSide(), left: BorderSide())),
                    gridData: FlGridData(show: true),
                    alignment: BarChartAlignment.spaceAround,
                    barTouchData: BarTouchData(
                        touchTooltipData: BarTouchTooltipData(
                            tooltipBgColor: Colors.white,
                            tooltipBorder: BorderSide(color: Colors.black))),
                    titlesData: FlTitlesData(
                      bottomTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      leftTitles: AxisTitles(
                          sideTitles:
                              SideTitles(showTitles: true, reservedSize: 75)),
                      topTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 20,
                indent: 20,
                endIndent: 20,
                thickness: 3,
                color: Colors.black,
              ),
              Center(
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: fixedList.map((idx) {
                    return Container(
                        color: GraphTheme.graphColors[idx],
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Text(
                          series.dataPoints![idx].dataDescription!,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                        ));
                  }).toList(),
                ),
              )
            ],
          ),
        ));
  }

  List<BarChartGroupData> _chartGroups(List fixedList) {
    return fixedList
        .map((idx) => BarChartGroupData(x: idx, barRods: [
              BarChartRodData(
                toY: series.dataPoints![idx].y!,
                color: GraphTheme.graphColors[idx],
                width: 20,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
              )
            ]))
        .toList();
  }
}
