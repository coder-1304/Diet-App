import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../routes.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final controller = LiquidController();
  final _myBox = Hive.box('mybox');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            liquidController: controller,
            enableSideReveal: true,
            slideIconWidget:
                const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            pages: [
              //PAGE-1
              Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        // SizedBox(height: 30),
                        Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Text(
                                'Get aware of doshas and find your dosha according to Ayurveda',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        Image(
                          image: AssetImage('images/doshas.jpg'),
                        ),
                        SizedBox(
                          height: 80,
                        )
                      ],
                    ),
                  )),

              //PAGE-2
              Container(
                  color: Colors.orange[50],
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        // SizedBox(height: 30),
                        Padding(
                            padding: EdgeInsets.all(30.0),
                            child: Text('Get a diet Plan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        SizedBox(
                          height: 30,
                        ),
                        Image(
                          image: AssetImage('images/meals.png'),
                        ),
                        SizedBox(
                          height: 80,
                        )
                      ],
                    ),
                  )),
              Container(
                  color: Colors.orange[100],
                  child: Center(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          // SizedBox(height: 30),
                          Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Text('Consult dietitians',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold))),
                          SizedBox(
                            height: 30,
                          ),
                          Image(
                            image: AssetImage('images/consult_dietitian.png'),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                        ],
                      ),
                    ),
                  )),

              //PAGE-4
              Container(
                  color: Colors.orange[200],
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Lets start',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Image(image: AssetImage('images/enterapp.png')),
                      ButtonTheme(
                        height: 100,
                        minWidth: 100,
                        child: ElevatedButton(
                            onPressed: () {
                              // _myBox.put('ProgressInWater', 0);
                              // _myBox.put('WaterTaken', 0);
                              // _myBox.put('newUser', 0);
                              Navigator.pushNamed(context, MyRoutes.loginP);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            child: Text(
                              'Start',
                              style: TextStyle(color: Colors.black),
                            )),
                      )
                    ],
                  ))),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 16,
            right: 32,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.jumpToPage(page: 3);
                      },
                      child: const Text(
                        'SKIP',
                        style: TextStyle(color: Colors.black),
                      )),
                  TextButton(
                      onPressed: () {
                        final page = controller.currentPage + 1;
                        controller.animateToPage(
                          page: page > 3 ? 0 : page,
                          duration: 400,
                        );
                      },
                      child:
                          Text('NEXT', style: TextStyle(color: Colors.black))),
                ]),
          )
        ],
      ),
    );
  }
}
