import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../widgets/extension/retail_extension.dart';
import 'graphTheme.dart';
import 'model/graphmodels.dart';

class LineGraphAmountVsTimeView extends StatelessWidget {
  final LineGraphData graphData;
  bool showFilter = false;
  LineGraphAmountVsTimeView({Key? key, required this.graphData})
      : super(key: key);

  LineChartData getChartData(context) {
    return LineChartData(
        lineBarsData: [
          ...graphData.dataSeries!
              .where((element) => element.dataPoints != null)
              .map((currentSeries) {
            Color color = graphData.dataSeries!
                        .where((element) => element.dataPoints != null)
                        .length ==
                    1
                ? const Color.fromRGBO(76, 175, 80, 1)
                : Color((Random().nextDouble() * 0xFFFFFF).toInt())
                    .withOpacity(1.0);

            return LineChartBarData(
                color: color,
                spots: currentSeries.dataPoints!
                    .map((point) => FlSpot(
                        (currentSeries.dataPoints?.indexWhere(
                                (element) => element.x == point.x))!
                            .floorToDouble(),
                        point.y!))
                    .toList(),
                dotData: FlDotData(
                  show: true,
                  getDotPainter: (p0, p1, p2, p3) {
                    return FlDotCirclePainter(
                        color: const Color.fromRGBO(76, 175, 80, 1),
                        radius: 3,
                        strokeColor: Colors.black87,
                        strokeWidth: 2);
                  },
                ));
          })
        ],
        lineTouchData: LineTouchData(
          enabled: true,
          touchCallback:
              (FlTouchEvent event, LineTouchResponse? touchResponse) {},
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map(
                (LineBarSpot touchedSpot) {
                  const textStyle = TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white);
                  return LineTooltipItem(
                    "${graphData.dataSeries!.toList()[touchedSpot.barIndex].dataPoints![touchedSpot.spotIndex].x!}"
                    "\n------------"
                    "\n${graphData.dataSeries!.toList()[touchedSpot.barIndex].dataPoints![touchedSpot.spotIndex].dataDescription!}"
                    "\n------------"
                    "\n${getCurrencyFormatter(context).format(double.parse("${graphData.dataSeries!.toList()[touchedSpot.barIndex].dataPoints![touchedSpot.spotIndex].y! ?? "0"}"))}",
                    textStyle,
                  );
                },
              ).toList();
            },
          ),
        ),
        titlesData: FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: true,
              interval: graphData.xInterval,
              reservedSize: 78,
              getTitlesWidget: (value, meta) {
                return Column(
                  children: [
                    SizedBox(height: 50),
                    RotationTransition(
                      turns: new AlwaysStoppedAnimation(270 / 360),
                      child: Text(
                        "${graphData.dataSeries!.toList()[0].dataPoints![value.toInt()].x!}",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                );
              },
            )),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                reservedSize: 80,
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  return Text(getCurrencyFormatter(context).format(value),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ));
                },
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: LineChart(getChartData(context)),
      )),
    );
  }
}
