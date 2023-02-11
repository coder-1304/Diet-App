import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AddFoodManually extends StatefulWidget {
  AddFoodManually({Key? key}) : super(key: key);

  @override
  State<AddFoodManually> createState() => _AddFoodManuallyState();
}

class _AddFoodManuallyState extends State<AddFoodManually> {
  double protein = 0;
  double carbs = 0;
  double calories = 0;
  String quantity="";
  String name="";
  final _myBox = Hive.box('mybox');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Add Manually', style: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.grey.withOpacity(0.01),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //food name
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: TextFormField(
                  onChanged: (value) {
                    try {
                      name=value;
                    } catch (e) {
                      name="";
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Name of Food Taken',
                    fillColor: Colors.white,
                    filled: true,
                  )),
            ),
          ),
          SizedBox(height: 13,),
          //quantity
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: TextFormField(
                  onChanged: (value) {
                    try {
                      quantity=value;
                    } catch (e) {
                      quantity="";
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter quantity',
                    fillColor: Colors.white,
                    filled: true,
                  )),
            ),
          ),
          SizedBox(height: 13,),
          const Text('Nutritional Content',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            SizedBox(height: 13,),      
          //protein
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: TextFormField(
                  onChanged: (value) {
                    try {
                      protein = double.parse(value);
                    } catch (e) {
                      protein = 0;
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter protein',
                    fillColor: Colors.white,
                    filled: true,
                  )),
            ),
          ),
          SizedBox(height: 13,),
          //carbs
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: TextFormField(
                  onChanged: (value) {
                    try {
                      carbs = double.parse(value);
                    } catch (e) {
                      carbs = 0;
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Carbs',
                    fillColor: Colors.white,
                    filled: true,
                  )),
            ),
          ),
          SizedBox(height: 13,),
          //calories
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: TextFormField(
                  onChanged: (value) {
                    try {
                      calories = double.parse(value);
                    } catch (e) {
                      calories = 0;
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter Calories',
                    fillColor: Colors.white,
                    filled: true,
                  )),
            ),
          ),
          SizedBox(height: 30,),

          ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                onPressed: () {
                  if(protein!=0&&carbs!=0&&calories!=0)
                  {
                    _myBox.put('ProteinTaken',protein.toInt()+_myBox.get('ProteinTaken'));
                    _myBox.put('CarbsTaken',carbs.toInt()+_myBox.get('CarbsTaken'));
                    _myBox.put('CaloriesTaken',calories.toInt()+_myBox.get('CaloriesTaken'));

                  }
                  else
                  {
                    return;
                  }
                    List <String> food=_myBox.get('foodTaken');
                    food.add(name);
                    List <String> quant=_myBox.get('quantity');
                    quant.add(quantity);
                    _myBox.put('foodTaken', food);
                    _myBox.put('quantity', quant);
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: const Duration(milliseconds: 800),
                    backgroundColor: Colors.grey.shade100,
                    content: const Text(
                      "Added ✓",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ));
                  Navigator.pop(context);
                  // Navigator.pushNamed(context, MyRoutes.searchHome);
                },
                // icon: Icon(Icons.check),
                child: const Text('ADD'),
              )


        ],
      ),
    );
  }
}
