import 'package:diet_recall3/BottomNavigationBar/Pages/Progress/data.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ProgressChart extends StatelessWidget {
  final List<ProgressData> data;
  ProgressChart({required this.data});

  Widget build(BuildContext context) {
    num a = 0;
    List<charts.Series<ProgressData, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          measureFn: (ProgressData series, _) => series.Progress,
          domainFn: (ProgressData series, _) => series.Date,
          colorFn: (ProgressData series, _) => series.BarColor),
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text('Progress by date',style: Theme.of(context).textTheme.bodyMedium,),
              Expanded(child: charts.BarChart(series, animate: true),)
            ],
          ),
        ),
      )

    );
  }
}
