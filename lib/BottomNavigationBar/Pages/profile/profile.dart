import 'package:diet_recall3/routes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool like = false;
  final _myBox = Hive.box('mybox');
  void writeData(String k, int v) {
    _myBox.put(k, v);
  }

  String readData(String name) {
    return (_myBox.get(name));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.01),
        // backgroundColor: Colors.orange,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${readData('Name')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Age: ${readData('Age')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Dosha: ${_myBox.get('Dosha')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Goal: ${_myBox.get('Goal')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Protein R: ${_myBox.get('ProteinReq')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Calories R: ${_myBox.get('CaloriesReq')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Carbs R: ${_myBox.get('CarbsReq')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Score : ${_myBox.get('Score')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Gender: ${readData('Gender')}'),
            const SizedBox(
              height: 10,
            ),
            Text('BMI: ${readData('BMI')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Email: ${readData('Email')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Height: ${readData('Height')}'),
            const SizedBox(
              height: 10,
            ),
            Text('Weight: ${readData('Weight')}'),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  _myBox.put('newUser', 1);
                  Navigator.pushNamed(context, MyRoutes.introP);
                },
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                child: const Text('Sign Out'))
          ],
        )));
  }
}
