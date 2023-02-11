import 'package:flutter/material.dart';
// import 'package:pie_chart_try/dosha.dart';
// import 'package:pie_chart_try/sub_series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:diet_recall3/BottomNavigationBar/Pages/quiz/result/subs_charts.dart';
import 'package:diet_recall3/BottomNavigationBar/Pages/quiz/result/sub_series.dart';

import 'dosha.dart';

class SubsChart extends StatelessWidget {
  final List<SubSeries> data;

  SubsChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubSeries, String>> series = [
      charts.Series(
        id: "Doshas",
        data: data,
        domainFn: (SubSeries series, _) => series.state,
        measureFn: (SubSeries series, _) => series.percent,
        colorFn: (SubSeries series, _) => series.barcolor,
        labelAccessorFn: (SubSeries labl, _) => '${labl.percent}',
      )
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Doshas By Percentage",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Expanded(
                  child: charts.PieChart(
                series,
                animate: true,
                behaviors: [
                  new charts.DatumLegend(
                    outsideJustification:
                        charts.OutsideJustification.endDrawArea,
                    horizontalFirst: false,
                    desiredMaxRows: 2,
                    cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                    entryTextStyle: charts.TextStyleSpec(
                        color: charts.MaterialPalette.purple.shadeDefault,
                        fontFamily: 'Georgia',
                        fontSize: 11),
                  )
                ],
                defaultRenderer: new charts.ArcRendererConfig(
                    arcWidth: 100,
                    arcRendererDecorators: [
                      new charts.ArcLabelDecorator(
                          labelPosition: charts.ArcLabelPosition.inside)
                    ]),
              )),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                  onSurface: Colors.red,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => vata()),
                  );
                },
                child: const Text('Vata Dosha'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => kapha()),
                  );
                },
                child: const Text('Kapha Dosha'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pitta()),
                  );
                },
                child: const Text('Pitta Dosha'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
