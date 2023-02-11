import 'dart:ffi';

import 'package:diet_recall3/routes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _myBox = Hive.box('mybox');

  //write data
  void writeData(String keyText, String valOfKey) {
    _myBox.put(keyText, valOfKey);
  }

  //read data
  String readData(String s) {
    return _myBox.get(s).toString();
  }

  // String watertook= readData('WaterTaken');

  double waterIntake = 0;
  bool first = false;

  int glass = 0;
  @override
  Widget build(BuildContext context) {
    // if (readData('WaterTaken') == '0') {
    //   glass = 0;
    // } else {
    //   glass = int.parse(readData('WaterTaken'));
    //   // print('entered');
    // }
    // try{
    //   glass = int.parse(readData('WaterTaken'));
    // }exception(e){
    //   glass=0;
    // }
  //  waterIntake = double.parse(readData('ProgressInWater'));

    int a =int.parse(readData('WaterTaken'));
    return Scaffold(
      // appBar: AppBar(
      
      //   automaticallyImplyLeading: false,
      //   actions: [
      //     Align(alignment: Alignment.center,),
      //     Image.asset('images/logo.png',),
      //     // const CircleAvatar(
      //     //   backgroundImage: NetworkImage(
      //     //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm9t4ColDnY4w2KJuyo3VQk9l41rWpG35ullBgK_N31C9lKwMVdS9qm90BkeLUKStT4oY&usqp=CAU',
      //     // ),
      //     // ),
      //     // const SizedBox(
      //     //   width: 17,
      //     // ),
      //     const Center(child: Text('Diet Recall',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),),),
      //     const SizedBox(
      //       width: 200,
      //     ),
      //     // IconButton(
            
      //     //     onPressed: () {
      //     //       Navigator.pushNamed(context, MyRoutes.notifications);
      //     //     }, icon: const Icon(Icons.task, size: 30,)),
      //     // const SizedBox(
      //     //   width: 10,
      //     // ),
      //   ],
      //   // title: Text(
      //   //   'Diet Recall App',
      //   //   style: TextStyle(fontSize: 17),
      //   // ),
      //   centerTitle: true,
      //   elevation: 0,
      //   toolbarHeight: 60,
      //   backgroundColor: Colors.grey.withOpacity(0.01),
      // ),

        extendBody: true,
        backgroundColor: Colors.grey.withOpacity(0.01),
        body: Expanded(
          child: Column(
            children: [
              // const SizedBox(
              //   height: 13,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              
              //   Container(
              //     height: 100,
              //     width: 100,
              //     // padding: EdgeInse,
              //     // margin: EdgeInsets.all(40),
              //     child: Image.asset('images/logo.png'),
              //   ),
              //   Text('Diet Recall',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange),),
              // ],),
              const SizedBox(
                height: 13,
              ),
              Expanded(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.BMI);
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // backgroundImage,
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[100],
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/bmiCalc.png'),
                              const Text("BMI Calculator",style: TextStyle(color: Colors.black ),),
                              const SizedBox(
                                height: 17,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //2nd container
                    InkWell(
                      onTap: () {Navigator.pushNamed(context, MyRoutes.notifications);},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // backgroundImage,
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[100],
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/tasks.png',
                                height: 80,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text('Your Tasks'),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // 3rd container : Water Intake
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // backgroundImage,
                      padding: const EdgeInsets.all(8),
                      // color: Colors.teal[100],
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (glass != 0) {
                                          glass--;
                                          writeData(
                                              'WaterTaken', glass.toString());

                                          double temp=double.parse(readData('ProgressInWater'));
                                          temp -= 0.125;
                                          writeData('ProgressInWater', temp.toString());
                                          print(readData('ProgressInWater'));
                                        }

                                        if (readData('ProgressInWater') != '0') {
                                          
                                        }
                                        waterIntake=double.parse(readData('ProgressInWater'));
                                        glass =
                                            int.parse(readData('WaterTaken'));
                                      });
                                    },
                                    icon: Icon(Icons.remove_circle)),
                                //circular Indicator
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: CircularProgressIndicator(
                                    value: double.parse(readData('ProgressInWater')),
                                    backgroundColor:
                                        Color.fromARGB(10, 10, 10, 100),
                                    strokeWidth:
                                        5, //for width of progressIndicator
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                        setState(() {
                                          // if (readData('ProgressInWater') != '1') {
                                          
                                          // }
                                          glass =
                                              int.parse(readData('WaterTaken'));
                                          if (glass != 8) {
                                            glass++;
                                            writeData(
                                                'WaterTaken', glass.toString());
                                                double temp=double.parse(readData('ProgressInWater'));
                                          temp += 0.125;
                                          writeData('ProgressInWater', temp.toString());
                                          }

                                          
                                        });
                                      
                                    },
                                    icon: Icon(Icons.add_box_rounded)),
                              ],
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              '${readData('WaterTaken')}/8 glass\nwater taken',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),

                    //4th container dosha
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.quizHome);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // backgroundImage,
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[100],
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/doshas.jpg'),
                                Text('Find Your Dosha')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    //5th container: Food Taken
                    
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.foodTaken);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // backgroundImage,
                        padding: const EdgeInsets.all(8),
                        // color: Colors.teal[100],
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/meals.png'),
                              SizedBox(height: 8,),
                              Text('Food Taken'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}