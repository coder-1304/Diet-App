import 'package:diet_recall3/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hive/hive.dart';

class EnterDetails extends StatefulWidget {
  EnterDetails({Key? key}) : super(key: key);

  @override
  State<EnterDetails> createState() => _EnterDetailsState();
}

class _EnterDetailsState extends State<EnterDetails> {
  double height = 0;
  double weight = 0;
  bool showResult = false;
  //Gender-> true=female false=male
  bool male = false;
  bool female = false;
  bool gain = false;
  bool maintain = false;
  bool loss = false;

  final _myBox = Hive.box('mybox');

  //write data
  void writeData(String k, String v) {
    _myBox.put(k, v);
  }

  void writeIntData(String k, int v) {
    _myBox.put(k, v);
  }

  //read data
  String readData(String k) {
    return (_myBox.get(k));
  }

  String Height = "";
  String Name = "";
  String Email = "";
  String Age = "";
  String Weight = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.withOpacity(0.01),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          "Welcome $Name",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[100],
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Name
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextFormField(
                      onChanged: (value) {
                        try {
                          setState(() {
                            Name = value;
                          });
                        } catch (e) {
                          Name = "";
                        }
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        hintText: 'Name',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),

                //Gender
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Gender: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
                SizedBox(
                  height: 15,
                ),

                //fitness Goal
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    // const SizedBox(height: 20,),
                    const Text(
                      'Goal: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 44,
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: gain,
                                onChanged: (goal) {
                                  setState(() {
                                    gain = true;
                                    loss = false;
                                    maintain = false;
                                  });
                                }),
                            const Text('Weight Gain'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: loss,
                                onChanged: (goal) {
                                  setState(() {
                                    gain = false;
                                    loss = true;
                                    maintain = false;
                                  });
                                }),
                            Text('Weight Loss'),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: maintain,
                                onChanged: (goal) {
                                  setState(() {
                                    gain = false;
                                    loss = false;
                                    maintain = true;
                                  });
                                }),
                            Text('Maintain Weight'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                //Email
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextFormField(
                      onChanged: (value) {
                        try {
                          Email = value;
                        } catch (e) {
                          Email = "";
                        }
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        hintText: 'Email',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),

                //Age
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextFormField(
                      onChanged: (value) {
                        try {
                          Age = value;
                        } catch (e) {
                          Age = "";
                        }
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        ),
                        hintText: 'Age',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),

                //Weight
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextFormField(
                      onChanged: (value) {
                        try {
                          Weight = value;
                        } catch (e) {
                          Weight = "";
                        }
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.monitor_weight_rounded,
                          color: Colors.grey,
                        ),
                        hintText: 'Weight in KG',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                //Height
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextFormField(
                      onChanged: (value) {
                        try {
                          Height = value;
                        } catch (e) {
                          Height = "";
                        }
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.height_rounded,
                          color: Colors.grey,
                        ),
                        hintText: 'Height in Meters',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                //password
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: TextFormField(
                      obscureText: true,
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        hintText: 'Create a Password',
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      )),
                ),

                const SizedBox(
                  height: 30,
                ),

                ElevatedButton(
                  onPressed: () {
                    _myBox.put('newUser', 0);
                    writeData('Name', Name);
                    writeData('Email', Email);
                    writeData('Age', Age);
                    writeData('Weight', Weight);
                    writeData('CurrWeight', Weight);
                    writeData('Height', Height);
                    double w = double.parse(_myBox.get('Weight'));
                    if (gain) {
                      _myBox.put('Goal', 'Weight Gain');
                      _myBox.put('ProteinReq', (1.5 * w).toInt());
                      _myBox.put('CaloriesReq', (45 * w).toInt());
                      _myBox.put('CarbsReq', (5 * w).toInt());
                    } else if (loss) {
                      _myBox.put('Goal', 'Weight Loss');
                      _myBox.put('ProteinReq', (1 * w).toInt());
                      _myBox.put('CaloriesReq', (2000).toInt());
                      _myBox.put('CarbsReq', (3 * w).toInt());
                    } else {
                      _myBox.put('Goal', 'Maintain Weight');
                      _myBox.put('ProteinReq', (1.5 * w).toInt());
                      _myBox.put('CaloriesReq', (45 * w).toInt());
                      _myBox.put('CarbsReq', (5 * w).toInt());
                    }

                    if (male == true) {
                      writeData('Gender', 'Male');
                    } else {
                      writeData('Gender', 'Female');
                    }
                    writeIntData('newUser', 0);

                    String getBMI(double ht, double wt) {
                      double BMI = (wt / (ht * ht));
                      String result = "";
                      if (BMI < 18.5) {
                        result = '(Underweight)';
                      } else if (BMI >= 18.5 && BMI < 24.9) {
                        result = '(Healthy)';
                      } else if (BMI >= 24.9 && BMI < 29.9) {
                        result = '(Overweight)';
                      } else {
                        result = '(Obesity)';
                      }
                      int n = BMI.round();
                      return '$n $result';
                    }


                    


                    _myBox.put(
                        'BMI',
                        getBMI(double.parse(_myBox.get('Height')),
                            double.parse(_myBox.get('Weight'))));

                    Navigator.pushNamed(context, MyRoutes.bnbHome);
                  },
                  child: Text('SUBMIT'),
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
