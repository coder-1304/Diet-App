import 'package:flutter/material.dart';

class ResultOfDosha extends StatefulWidget {
  ResultOfDosha({Key? key}) : super(key: key);

  @override
  State<ResultOfDosha> createState() => _ResultOfDoshaState();
}

class _ResultOfDoshaState extends State<ResultOfDosha> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
