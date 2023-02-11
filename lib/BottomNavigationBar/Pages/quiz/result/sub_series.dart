import 'package:charts_flutter/flutter.dart' as charts;

class SubSeries {
  final String state;
  final int percent;
  final charts.Color barcolor;

  SubSeries(
      {required this.state, required this.percent, required this.barcolor});
}
