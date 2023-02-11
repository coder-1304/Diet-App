import 'package:flutter/material.dart';

class BMICalc extends StatefulWidget {
  BMICalc({Key? key}) : super(key: key);

  @override
  State<BMICalc> createState() => _BMICalcState();
}

class _BMICalcState extends State<BMICalc> {
  double height = 0;
  double weight = 0;
  bool showResult = false;
  //Gender-> true=female false=male
  bool male = false;
  bool female = false;

  String getBMI(double height, double weight) {
    double BMI = weight / (height * height);
    String result;
    if (BMI < 18.5) {
      result = 'You are Underweight';
    } else if (BMI >= 18.5 && BMI < 24.9) {
      result = 'You are Healthy';
    } else if (BMI >= 24.9 && BMI < 29.9) {
      result = 'You are Overweight';
    } else {
      result = 'You have Obesity';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.withOpacity(0.01),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: Colors.orange,
      ),
      body: showResult
          //Getting result
          ? Center(
              child: Text(getBMI(height, weight)),
            )
          //Entering details
          : Center(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  height: 500,
                  width: 400,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            Text('Age:',),
                            // SizedBox(width: 30,),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(65, 0, 100, 0),
                                child: TextFormField(
                                    onChanged: (value) {},
                                    decoration: const InputDecoration(
                                      // contentPadding: EdgeInsets.symmetric(
                                      //     vertical: 5.0, horizontal: 10.0),
                                      hintText: 'Ages: 2-120',
                                      fillColor: Colors.white,
                                      filled: true,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            Text('Gender: '),
                            SizedBox(
                              width: 27,
                            ),
                            Checkbox(
                                value: male,
                                onChanged: (gender) {
                                  setState(() {
                                    male = true;
                                    female = false;
                                  });
                                }),
                            Text('Male'),
                            SizedBox(
                              width: 20,
                            ),
                            Checkbox(
                                value: female,
                                onChanged: (ngender) {
                                  setState(() {
                                    female = true;
                                    male = false;
                                  });
                                }),
                            Text('Female'),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            Text('Enter Height: '),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 100, 0),
                                child: TextFormField(
                                    onChanged: (value) {
                                      try {
                                        height = double.parse(value);
                                      } on FormatException {
                                        height = 0;
                                      }
                                    },
                                    decoration: const InputDecoration(
                                      hintText: 'in Meters',
                                      fillColor: Colors.white,
                                      filled: true,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(height: 10,),
                        //for weight
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            Text('Enter Weight: '),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(8, 0, 100, 0),
                                child: TextFormField(
                                    onChanged: (value) {
                                      try {
                                        weight = double.parse(value);
                                      } on FormatException {
                                        weight = 0;
                                      }
                                    },
                                    decoration: const InputDecoration(
                                      hintText: 'in KG',
                                      fillColor: Colors.white,
                                      filled: true,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        
                        ElevatedButton(
                          
                          onPressed: () {
                            if (height != 0 && weight != 0) {
                              setState(() {
                                showResult = true;
                              });
                            }
                          },
                          child: Text('Get BMI Report'),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.orange),
                              
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
