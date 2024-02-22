import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'model/graphmodels.dart';

class LinearProgressiveComparatorGraph extends StatelessWidget {
  const LinearProgressiveComparatorGraph(
      {Key? key,
      required this.series,
      this.numberFormatter,
      this.width,
      this.height,
      required this.spacing})
      : super(key: key);
  final DataSeries series;
  final double? width;
  final double? height;
  final double spacing;

  final NumberFormat? numberFormatter;
  @override
  Widget build(BuildContext context) {
    Widget getProgressBar(DataPoint point) {
      Color color =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
      double maxValue = series.dataPoints!
          .reduce((current, next) => current.y! > next.y! ? current : next)
          .y!;

      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  point.x!,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(fontWeight: FontWeight.w700),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
              (numberFormatter?.format(point.y!) ?? point.y!.toString()),
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontWeight: FontWeight.w700),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          SizedBox(
            height: spacing,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              backgroundColor: Colors.black12,
              minHeight: 10,
              color: color,
              value: point.y! / maxValue,
            ),
          ),
          SizedBox(
            height: spacing,
          ),
        ],
      );
    }

    return Container(
      width: width,
      height: height,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              series.seriesDescription!.tr(),
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.w800),
            ).tr(),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 20,
              indent: 20,
              endIndent: 20,
              thickness: 3,
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            ...series.dataPoints!.map((e) => getProgressBar(e)).toList()
          ],
        ),
      ),
    );
  }
}
