import 'package:flutter/material.dart';

class MealPage extends StatefulWidget {
  MealPage({Key? key}) : super(key: key);

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Search Meal'),
      ),
    );;
  }
}