import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class weightData extends StatefulWidget {
  @override
  State<weightData> createState() => _weightDataState();
}

class _weightDataState extends State<weightData> {
  // const weightData({super.key});
final _myBox = Hive.box('mybox');
String finalW="";

String status="";
@override
double change=0;
void initState() {
  super.initState();
  double pastW=double.parse(_myBox.get('Weight'));
  double currW=double.parse(_myBox.get('CurrWeight'));

  // double pw=double.parse(_myBox.get('Weight'));
  // double cw=double.parse(_myBox.get('CurrWeight'));
  if(pastW>currW)
  {
    status="Weight Lost";
    change=pastW-currW;
  }else{
    status="Weight Gained";
    change=currW-pastW;
  }
  finalW=change.toStringAsFixed(2);


  
}


  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildButton(context, _myBox.get('Weight'), 'Past Weight'),
            buildDivider(),
            buildButton(context, _myBox.get('CurrWeight'), 'Current Weight'),
            buildDivider(),
            buildButton(context, finalW.toString(), status),
          ],
        ),
      );

  Widget buildDivider() => Container(height: 30, child: VerticalDivider());

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ],
        ),
      );
}
