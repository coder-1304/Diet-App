import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive/hive.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final _myBox = Hive.box('mybox');
  @override
  Widget build(BuildContext context) {
    bool proteinCompletion = false;
    bool carbsCompletion = false;
    bool caloriesCompletion = false;
    bool threeCompletion = false;
    int comp = 0;

    if (_myBox.get('ProteinTaken') >= _myBox.get('ProteinReq')) {
      proteinCompletion = true;
      comp++;
    }
    if (_myBox.get('CarbsTaken') >= _myBox.get('CarbsReq')) {
      carbsCompletion = true;
      comp++;
    }
    if (_myBox.get('CaloriesTaken') >= _myBox.get('CaloriesReq')) {
      caloriesCompletion = true;
      comp++;
    }
    if (proteinCompletion && carbsCompletion && caloriesCompletion) {
      threeCompletion = true;
    }

    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Tasks',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[100],
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: 210,
            height: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.green,
            ),
            child: Center(
              child: Text(
                'Complete Tasks to get points',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Divider(
          //   height: 0,
          //   thickness: 2,
          // ),
          //All three completion
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
            ),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Icon(
                  Icons.volunteer_activism_outlined,
                  size: 35,
                  color: Colors.grey,
                ),
              ),
              title: const Text('All required Nutrients'),
              trailing: _myBox.get('ThreeClaim') == 1
                  ? const Icon(Icons.task_alt,color: Colors.green,)
                  : comp == 3
                      ? ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _myBox.put('ThreeClaim', 1);
                              _myBox.put('Score', _myBox.get('Score') + 20);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 600),
                                backgroundColor: Colors.grey.shade100,
                                content: const Text(
                                  "+20 Points",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ));
                            });
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.green),
                          child: const Text('Claim'))
                      : Text('$comp/3'),
              subtitle: const Text('Consume all three required nutrients'),
            ),
          ),
          // Divider(
          //   height: 0,
          //   thickness: 2,
          // ),
          // Container(height: 40,color: Colors.red ,child: ),
          SizedBox(
            height: 3,
          ),

          //Protein Completion
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
            ),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Icon(
                  Icons.egg,
                  size: 35,
                  color: Colors.grey,
                ),
              ),
              title: const Text('Protein'),
              trailing: _myBox.get('ProteinClaim') == 1
                  ? const Icon(Icons.task_alt,color: Colors.green,)
                  : proteinCompletion
                      ? ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _myBox.put('ProteinClaim', 1);
                              _myBox.put('Score', _myBox.get('Score') + 10);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 600),                                content: const Text(
                                  "+10 Points",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ));
                            });
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.green),
                          child: const Text('Claim'))
                      : Text(
                          '${_myBox.get('ProteinTaken')}/${_myBox.get('ProteinReq')}'),
              subtitle: const Text('Complete Protein Intake for today'),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          //Carbs Completion
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
            ),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Icon(
                  Icons.local_pizza_outlined,
                  size: 35,
                  color: Colors.grey,
                ),
              ),
              title: const Text('Carbs'),
              trailing: _myBox.get('CarbsClaim') == 1
                  ? const Icon(Icons.task_alt,color: Colors.green,)
                  : carbsCompletion
                      ? ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _myBox.put('CarbsClaim', 1);
                              _myBox.put('Score', _myBox.get('Score') + 10);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 600),
                                backgroundColor: Colors.grey.shade100,
                                content: const Text(
                                  "+10 Points",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ));
                            });
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.green),
                          child: const Text('Claim'))
                      : Text(
                          '${_myBox.get('CarbsTaken')}/${_myBox.get('CarbsReq')}'),
              subtitle: const Text('Complete Carbs Intake for today'),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          //Calories Completion
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
            ),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Icon(
                  Icons.directions_run_rounded,
                  size: 35,
                  color: Colors.grey,
                ),
              ),
              title: const Text('Calories'),
              trailing: _myBox.get('CaloriesClaim') == 1
                  ? const Icon(Icons.task_alt,color: Colors.green,)
                  : caloriesCompletion
                      ? ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _myBox.put('CaloriesClaim', 1);
                              _myBox.put('Score', _myBox.get('Score') + 10);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 600),
                                backgroundColor: Colors.grey.shade100,
                                content: const Text(
                                  "+10 Points",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ));
                            });
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.green),
                          child: const Text('Claim'))
                      : Text(
                          '${_myBox.get('CaloriesTaken')}/${_myBox.get('CaloriesReq')}'),
              subtitle: const Text('Complete Calories Intake for today'),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          //8 glass water 
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
            ),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Icon(
                  Icons.local_drink,
                  size: 35,
                  color: Colors.grey,
                ),
              ),
              title: const Text('Water'),
              trailing: _myBox.get('WaterClaim') == 1
                  ? const Icon(Icons.task_alt,color: Colors.green,)
                  : _myBox.get('WaterTaken') == '8'
                      ? ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _myBox.put('WaterClaim', 1);
                              _myBox.put('Score', _myBox.get('Score') + 10);
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 600),
                                backgroundColor: Colors.grey.shade100,
                                content: const Text(
                                  "+10 Points",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ));
                            });
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.green),
                          child: const Text('Claim'))
                      : Text('${_myBox.get('WaterTaken')}/8'),
              subtitle: const Text('Drink 8 glasses of water'),
            ),
          ),
          // Divider(
          //   height: 0,
          //   thickness: 2,
          // ),
        ],
      )),
    );
  }
}
