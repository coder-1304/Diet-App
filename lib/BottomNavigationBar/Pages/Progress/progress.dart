import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:hive/hive.dart';

class MailPage extends StatefulWidget {
  MailPage({Key? key}) : super(key: key);

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {

  bool ask = false;
  static final List<CalorieConsumed> calorieData = [
    CalorieConsumed('1', 2035, Colors.grey),
    CalorieConsumed('2', 3112, Colors.grey),
    CalorieConsumed('3', 2544, Colors.grey),
    CalorieConsumed('4', 1353, Colors.grey),
    CalorieConsumed('5', 1533, Colors.grey),
    CalorieConsumed('6', 2877, Colors.grey),
    CalorieConsumed('7', 2035, Colors.grey),
  ];
  final _myBox = Hive.box('mybox');
  @override
  Widget build(BuildContext context) {
    List<charts.Series<CalorieConsumed, String>> series = [
      charts.Series(
          data: calorieData,
          id: "Calories Consumed",
          domainFn: (CalorieConsumed calories, _) => calories.day,
          measureFn: (CalorieConsumed calories, _) => calories.consumedCalories,
          colorFn: (CalorieConsumed calories, _) =>
              charts.ColorUtil.fromDartColor(calories.barColor))
    ];
    //remove line below
    // _myBox.put('ProteinTaken', 0);



      //new exp

      List<String> list=['What',"A",'Beautiful','Day'];
      _myBox.put('tList', list);
      //end of new exp







    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.01),
        // backgroundColor: Colors.orange,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Nutrients Intake for today',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Divider(
                height: 35,
              ),
              // const SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Protein
                  Column(
                    children: [
                      Text('Protein'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircularProgressIndicator(
                          value: _myBox.get('ProteinTaken').toDouble() /
                              _myBox.get('ProteinReq').toDouble(),
                          backgroundColor: Colors.white,
                          strokeWidth: 5, //for width of progressIndicator
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          '${_myBox.get('ProteinTaken')}/${_myBox.get('ProteinReq')}')
                    ],
                  ),
                  //Carbs
                  Column(
                    children: [
                      Text('Carbs'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircularProgressIndicator(
                          value: _myBox.get('CarbsTaken').toDouble() /
                              _myBox.get('CarbsReq').toDouble(),
                          backgroundColor: Colors.white,
                          strokeWidth: 5, //for width of progressIndicator
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          '${_myBox.get('CarbsTaken')}/${_myBox.get('CarbsReq')}'),
                    ],
                  ),

                  //Calories
                  Column(
                    children: [
                      Text('Calories'),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircularProgressIndicator(
                          value: _myBox.get('CaloriesTaken').toDouble() /
                              _myBox.get('CaloriesReq').toDouble(),
                          backgroundColor: Colors.white,
                          strokeWidth: 5, //for width of progressIndicator
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          '${_myBox.get('CaloriesTaken')}/${_myBox.get('CaloriesReq')}')
                    ],
                  ),
                ],
              ),
              const Divider(
                height: 80,
              ),
              const Text(
                'Calories Consumed chart of past 7 days',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              Center(
                child: Container(
                  height: 300,
                  width: 300,
                  child: charts.BarChart(series),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
             
              SizedBox(height: 10,),
              // ElevatedButton(
              //     onPressed: () {
              //       setState(() {
              //         _myBox.put('ProteinTaken', 0);
              //         _myBox.put('CaloriesTaken', 0);
              //         _myBox.put('CarbsTaken', 0);
              //         _myBox.put('ProteinClaim', 0);
              //         _myBox.put('CarbsClaim', 0);
              //         _myBox.put('CaloriesClaim', 0);
              //         _myBox.put('ThreeClaim', 0);
              //         _myBox.put('WaterClaim', 0);
              //         _myBox.put('Score', 0);


              //         List <String> foodT=[];
              //       List <String> q=[];
              //       _myBox.put('foodTaken', foodT);
              //       _myBox.put('quantity',q);
              //       });
              //     },
              //     child: Text('Reset')),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}

class CalorieConsumed {
  final String day;
  final int consumedCalories;
  final Color barColor;

  CalorieConsumed(this.day, this.consumedCalories, this.barColor);
}
