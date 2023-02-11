import 'package:flutter/material.dart';
// import 'package:pie_chart_try/sub_series.dart';
import 'package:diet_recall3/BottomNavigationBar/Pages/quiz/result/subs_charts.dart';
import 'package:diet_recall3/BottomNavigationBar/Pages/quiz//result/sub_series.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:pie_chart_try/subs_charts.dart';
// import 'package:pie_chart_try/dosha.dart';

class HomePageDosha extends StatelessWidget {
  final List<SubSeries> data = [
    SubSeries(
      state: "Vata",
      percent: 40,
      barcolor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    SubSeries(
      state: "Pitha",
      percent: 30,
      barcolor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    SubSeries(
      state: "Khapha",
      percent: 30,
      barcolor: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        title: Text("Result"),
      ),
      body: Center(
        child: SubsChart(data: data),
      ),
    );
  }
}
