import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'graphTheme.dart';
import 'model/graphmodels.dart';

class PieChartView extends StatelessWidget {
  final String graphDescription;
  final PieGraphData graphData;

  const PieChartView(
      {Key? key, required this.graphData, required this.graphDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, Color> assignedGraphColors = Map();
    int seriesCounter = 0;
    graphData.sectors!.forEach((sector) {
      assignedGraphColors.putIfAbsent(
          sector.sectorId!, () => GraphTheme.graphColors[(seriesCounter++) % 12]);
    });

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
              aspectRatio: 1.0,
              child: PieChart(PieChartData(
                  sections: _chartSections(graphData.sectors!),
                  centerSpaceRadius: 40.0,
                  pieTouchData: PieTouchData(enabled: true)))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...graphData.sectors!.map((element) {
                return Row(
                  children: [
                    Icon(Icons.radio_button_checked,
                        color: assignedGraphColors[element.sectorId]),
                    Text(element.dataDescription!,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: assignedGraphColors[element.sectorId]))
                  ],
                );
              })
            ],
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _chartSections(List<PieSector> sectors) {
    final List<PieChartSectionData> list = [];
    int seriesCounter = 0;
    for (var sector in sectors) {
      const double radius = 60.0;
      final data = PieChartSectionData(
        color: GraphTheme.graphColors[(seriesCounter++) % 12],
        value: sector.value,
        radius: radius,
        badgeWidget:
            Text("${sector.value}", style: TextStyle(color: Colors.white)),
        titlePositionPercentageOffset: 1.5,
        title: sector.dataDescription,
        showTitle: false,
      );
      list.add(data);
    }
    return list;
  }
}
