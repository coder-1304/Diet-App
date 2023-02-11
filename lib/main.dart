import 'package:diet_recall3/BottomNavigationBar/Pages/Food_List/add_manually.dart';
import 'package:diet_recall3/BottomNavigationBar/Pages/Food_List/food_list_home.dart';
import 'package:diet_recall3/BottomNavigationBar/Pages/Home/bmi.dart';
import 'package:diet_recall3/BottomNavigationBar/Pages/Home/food_taken.dart';
import 'package:diet_recall3/BottomNavigationBar/Pages/quiz/quiz_homepage.dart';
import 'package:diet_recall3/IntroAndLogin/begin.dart';
import 'package:diet_recall3/IntroAndLogin/enter_detail.dart';
import 'package:diet_recall3/IntroAndLogin/intro_page.dart';
import 'package:diet_recall3/IntroAndLogin/login_page.dart';
import 'package:diet_recall3/Notifications/notifications.dart';
import 'package:diet_recall3/routes.dart';
import 'package:flutter/material.dart';
import 'BottomNavigationBar/BNB_home.dart';

//for hive database
import 'package:hive/hive.dart'; //only this package is required for every page

import 'package:hive_flutter/hive_flutter.dart';

// import 'BottomNavigationBar/Pages/quiz/result/home.dart';

// import 'BottomNavigationBar/Pages/quiz/home.dart';

void main() async {
  await Hive.initFlutter();

  //open the box
  var box = await Hive.openBox('mybox');
  final _myBox = Hive.box('mybox');


  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: LoginPage(),
    routes: {
      '/': (context) => Beginning() ,
      // '/':(context) => BNBHome(),
      MyRoutes.quizHome: (context) => QuizHome(),
      MyRoutes.bnbHome: (context) => BNBHome(),
      MyRoutes.notifications: (context) => Notifications(),
      MyRoutes.BMI: (context) => BMICalc(),
      MyRoutes.introP: (context) => IntroPage(),
      MyRoutes.loginP: (context) => LoginPage(),
      MyRoutes.searchHome: (context) => FoodListHome(),
      MyRoutes.enterDetails: (context) => EnterDetails(),
      MyRoutes.foodTaken:(context) => FoodTaken(),
      MyRoutes.manualFoodSelector:(context) => AddFoodManually(),
    },
  ));
}
