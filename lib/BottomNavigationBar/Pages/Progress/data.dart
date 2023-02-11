import 'package:charts_flutter/flutter.dart' as charts; 

class ProgressData{
  final String Date;
  final int Progress;
  final charts.Color BarColor;

  ProgressData({required this.Date,required this.Progress,required this.BarColor, required List<ProgressData> data});
}