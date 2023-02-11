import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';

// import 'package:profile_page_1/weightData.dart';
import '../../../routes.dart';
import 'weightData.dart';
// import 'package:diet_recall3/BottomNavigationBar/Pages/Progress/';

import 'profile_widget.dart';
import 'weight_input.dart';
import 'package:hive/hive.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _myBox = Hive.box('mybox');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.01),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   actions: [IconButton(onPressed: (){
      //     _myBox.put('newUser', 1);
      //             Navigator.pushNamed(context, MyRoutes.introP);
      //   }, icon: Icon(Icons.logout,color: Colors.orange,))],),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 30), // change the height above profile image
          ProfileWidget(
            onClicked: () async {},
          ),
          const SizedBox(
            height: 24,
          ),
          buildName(),
          SizedBox(
            height: 18,
          ),
          weightData(),
          SizedBox(
            height: 18,
          ),
          buildButton(),

          SizedBox(height: 25),

          buildBodyAttributes(),
        ],
      ),
    );
  }

  Widget buildName() => Column(
        children: [
          Text(
            _myBox.get('Name'),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 4),
          Text(
            _myBox.get('Email'),
            style: TextStyle(color: Colors.grey),
          ),
        ],
      );
  Widget buildButton() => Padding(
        padding: const EdgeInsets.fromLTRB(110, 3, 110, 3),
        child: Container(
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              primary: Colors.orange,
              onPrimary: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => weightInput()),
              );
            },
            child: Text(
              "Update Weight",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
        ),
      );
  Widget buildBodyAttributes() => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 330,
            width: 350,
            color: Colors.transparent,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.75),
              children: [
                Container(
                  // height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  // height: 5,
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                        _myBox.get('Score').toString(),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Score",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  // width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children:  [
                      SizedBox(height: 15),
                      Text(
                      _myBox.get('Dosha'),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Dosha",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    children:  [
                      SizedBox(height: 15),
                      Text(
                        _myBox.get('Age'),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Age",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  // width: 10,
                  height: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        _myBox.get('BMI'),
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "BMI",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  // width: 10,
                  height: 20,
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                        _myBox.get('Height'),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Height (in m)",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  // width: 10,
                  height: 20,
                  child: Column(
                    children:  [
                      SizedBox(height: 15),
                      Text(
                        _myBox.get('CurrWeight'),
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Weight (in kg)",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
