import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diet_recall3/BottomNavigationBar/Pages/Quiz/quiz_homepage.dart';
import 'package:diet_recall3/routes.dart';
import 'package:flutter/material.dart';
import '../Notifications/notifications.dart';
import 'Pages/Food_List/food_list_home.dart';
import 'Pages/Home/home_page.dart';
import 'Pages/Progress/progress.dart';
import 'Pages/profile/profile_page.dart';

class BNBHome extends StatefulWidget {
  BNBHome({Key? key}) : super(key: key);

  @override
  State<BNBHome> createState() => _BNBHomeState();
}

class _BNBHomeState extends State<BNBHome> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  final screens = [
    HomePage(),
    MailPage(),
    FoodListHome(),
    // QuizHome(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.bar_chart,
        size: 30,
      ),
      const Icon(
        Icons.food_bank,
        size: 30,
      ),
      // Icon(
      //   Icons.quiz,
      //   size: 30,
      // ),
      Icon(
        Icons.person,
        size: 30,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Diet Recall'),
      
        automaticallyImplyLeading: false,
        // actions: const [
          
        //   CircleAvatar(
        //     backgroundImage: AssetImage('images/logo.png',),
        //   ),
        //   SizedBox(
        //     width: 17,
        //   ),
        //   const Center(child: Text('Diet Recall',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),),),
        //   const SizedBox(
        //     width: 180,
        //   ),
                 
        //   const SizedBox(
        //     width: 10,
        //   ),
        // ],
        // title: Text(
        //   'Diet Recall App',
        //   style: TextStyle(fontSize: 17),
        // ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 40,
        backgroundColor: Colors.orange,
      ),
      body: screens[index],
      // backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey,
        backgroundColor: Colors.grey.withOpacity(0.01),
        color: Colors.orange,
        items: items,
        height: 55,
        index: index,
        onTap: (index) {
          setState(() {
            this.index = index;
            // if(index==1){
            //   // ignore: prefer_const_constructors
            //   Navigator.pushNamed(context, MyRoutes.LvHome);
            // }
          });
        },
      ),
    );
  }
}