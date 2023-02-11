
import 'package:flutter/material.dart';
import 'content.dart';

class HomePageKeto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.white,
          title: Text("The Ketogenic Diet"),
        ),
        body: Center(
          child: Column(children: <Widget>[
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: null,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => what_is_keto()));
              },
              child: const Text("What is keto"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: null,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Categories()));
              },
              child: const Text("Categories"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: null,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => food_eat()));
              },
              child: const Text("Food to eat"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: null,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => food_avoid()));
              },
              child: const Text("Food to avoid"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: null,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => health_benifits()));
              },
              child: const Text("Health benifits"),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: null,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => sample()));
              },
              child: const Text("Sample Diet"),
            ),
          ]),
        ));
  }
}
