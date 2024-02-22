import 'package:flutter/material.dart';

class TabularData {
  int columns;
  List<String> header;
  List<Color> rowColors;
  List<List<String>> rows;

  TabularData({
    required this.columns,
    required this.header,
    required this.rowColors,
    required this.rows,
  });
}

class LineGraphData {
  List<DataSeries>? dataSeries;
  double? xInterval;

  LineGraphData({
    this.dataSeries,
    this.xInterval,
  });
}

class DataSeries {
  String? seriesId;
  String? seriesDescription;
  Color? seriesColor;
  List<DataPoint>? dataPoints;

  DataSeries({this.seriesId, this.seriesDescription, this.dataPoints});
}

class DataPoint {
  String? x;
  double? y;
  String? dataDescription;

  DataPoint({this.x, this.y, this.dataDescription});
}

class PieGraphData {
  List<PieSector>? sectors;

  PieGraphData({this.sectors});
}

class PieSector {
  String? sectorId;
  double? value;
  String? dataDescription;

  PieSector({this.sectorId, this.value, this.dataDescription});
}
