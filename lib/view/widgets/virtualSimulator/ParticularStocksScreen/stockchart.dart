import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:maze/model/virtualSimulatorModels/model/altgraphdata.dart';
import 'package:maze/theme/app_font.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../model/virtualSimulatorModels/model/graphmodel.dart';
import '../../../../theme/app_colors.dart';

class StockChart extends StatefulWidget {
  final List<GraphModel> graphData;
  const StockChart({super.key, required this.graphData});

  @override
  State<StockChart> createState() => _StockChartState();
}

class _StockChartState extends State<StockChart> {
  final TrackballBehavior _trackballBehavior = TrackballBehavior(
      activationMode: ActivationMode.singleTap,
      enable: true,
      lineColor: Colors.grey,
      tooltipDisplayMode: TrackballDisplayMode.floatAllPoints,
      tooltipSettings:
          const InteractiveTooltip(enable: true, color: AppColors.colorBlack1));
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: SfCartesianChart(
        trackballBehavior: _trackballBehavior,
        plotAreaBorderWidth: 0,
        series: <AreaSeries>[
          AreaSeries<GraphData, dynamic>(
              color: Colors.transparent,
              borderColor: AppColors.colorDarkGreen,
              borderWidth: 2,
              // gradient: LinearGradient(colors: [
              //   AppColors.colorPurple.withOpacity(0.0),
              //   AppColors.colorDarkGreen.withOpacity(0.5),
              //   AppColors.colorPurple.withOpacity(0.0),
              // ],begin: Alignment.centerLeft,end: Alignment.centerRight),
              dataSource: List.generate(
                  widget.graphData.length,
                  (index) => GraphData(
                      close: widget.graphData.reversed.toList()[index].close,
                      date: widget.graphData.reversed.toList()[index].date)),
              xValueMapper: (GraphData graph, _) => graph.date,
              yValueMapper: (GraphData graph, _) => graph.close,
              dataLabelSettings: const DataLabelSettings(isVisible: false)),
        ],
        primaryXAxis: CategoryAxis(
            isVisible: true,
            borderWidth: 0.0,
            majorGridLines: const MajorGridLines(width: 0),
            labelAlignment: LabelAlignment.center,
            axisLine: const AxisLine(width: 0),
            majorTickLines: const MajorTickLines(width: 0),
            labelStyle: AppFont.regularColorGrey8_8),
        primaryYAxis: NumericAxis(
            isVisible: true,
            borderWidth: 0.0,
            majorGridLines: const MajorGridLines(width: 0),
            interval: 500,
            maximumLabels: 2,
            axisLine: const AxisLine(width: 0),
            majorTickLines: const MajorTickLines(width: 0),
            labelStyle: AppFont.regularColorGrey8_8),
      ),
    );
  }
}
