import 'package:diet_recall3/routes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Beginning extends StatefulWidget {
  Beginning({Key? key}) : super(key: key);

  @override
  State<Beginning> createState() => _BeginningState();
}

class _BeginningState extends State<Beginning> {
  final _myBox = Hive.box('mybox');
  List<String> quotes = [
    'Health is not valued until sickness',
    'Sugary Drinks Are the Most Fattening Product in the Modern Diet',
    'Pure honey has a very long shelf life. It won’t spoil and can last up to 3000 years',
    'Physical activity is defined as any bodily movement produced by skeletal muscles that requires energy expenditure',
    'Fruit and veg are low in calories and fat, and high in fibre – 3 essential ingredients for successful weight loss',
    'Foods containing lots of fibre can help keep you feeling full, which is perfect for losing weight',
    'Knowing how to read food labels can help you choose healthier options',
    'Using smaller plates can help you eat smaller portions',
    'Swap a cup of pasta for a cup of vegetables',

  ];

  @override
  Widget build(BuildContext context) {
    
    _myBox.put('QuoteIndex', 0);
    // _myBox.put('QuoteIncrementor', 0);
    try {
      if (_myBox.get('QuoteIncrementor') >= 9) //9=number of quotes
      {
        _myBox.put('QuoteIncrementor', 0);
      } else {
        _myBox.put('QuoteIndex',
            _myBox.get('QuoteIndex') + _myBox.get('QuoteIncrementor'));
        _myBox.put('QuoteIncrementor', _myBox.get('QuoteIncrementor') + 1);
      }
    } catch (e) {
      _myBox.put('QuoteIncrementor', 0);
    }

    return Scaffold(
        backgroundColor: Colors.orange[50],
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 235,
            ),
            InkWell(
                onTap: () {
                  _myBox.put('ProgressInWater', 0);
                  _myBox.put('WaterTaken', 0);
                  _myBox.put('newUser', 1);
                  _myBox.put('ProteinReq', 0);
                  _myBox.put('ProteinTaken', 0);
                  _myBox.put('CaloriesReq', 0);
                  _myBox.put('CaloriesTaken', 0);
                  _myBox.put('CarbsReq', 0);
                  _myBox.put('CarbsTaken', 0);
                  _myBox.put('BMI', '-');

                  _myBox.put('ProteinClaim', 0);
                  _myBox.put('CarbsClaim', 0);
                  _myBox.put('CaloriesClaim', 0);
                  _myBox.put('ThreeClaim', 0);
                  _myBox.put('WaterClaim', 0);
                  _myBox.put('Score', 0);
                  _myBox.put('Dosha', '-');

                  List <String> foodT=[];
                    List <String> q=[];
                    _myBox.put('foodTaken', foodT);
                    _myBox.put('quantity',q);
                },
                child: Container(
                    width: 300,
                    child: Center(
                      child: Text(quotes[_myBox.get('QuoteIndex')],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
                    ))),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 40,
              width: 80,
              child: ElevatedButton(
                  onPressed: () {
                    if (_myBox.get('newUser') == 1) {
                      Navigator.pushNamed(context, MyRoutes.introP);
                    } else {
                      Navigator.pushNamed(context, MyRoutes.bnbHome);
                    }
                  },
                  child: Text('Enter'),
                  style: ElevatedButton.styleFrom(primary: Colors.orange)),
            ),
            SizedBox(
              height: 180,
            ),
            //Container(
            Image(
              image: AssetImage('images/cover.png'),
              width: double.infinity,
            ),
            //)
          ],
        )));
  }
}
