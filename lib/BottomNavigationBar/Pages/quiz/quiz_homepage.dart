import 'package:diet_recall3/BottomNavigationBar/Pages/Quiz/quizes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
// import 'package:diet_recall3/BottomNavigationBar/Pages/quiz/dosha.dart';   //dosha

import '../../../routes.dart';

class QuizHome extends StatefulWidget {
  QuizHome({Key? key}) : super(key: key);
  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;
  bool start = false;
  bool end = false;
  int optionA = 0;
  int optionB = 0;
  int optionC = 0;
  // int optionD = 0;
  int Dosha = 0;
  int question = 1;
  final _myBox = Hive.box('mybox');

  int findPercent(int n) {
    double k = (n / 15) * 100;
    return k.round();
  }

  String findDosha(A, B, C) {
    // A= VATA
    // B= PITTA
    // C= KAPHA
    String dosha = "";
    if (A > B && A > C) {
      Dosha = 1;
      dosha = "VATA";
    } else if (B > A && B > C) {
      Dosha = 2;
      dosha = "PITTA";
    } else if (C > A && C > B) {
      Dosha = 3;
      dosha = "KAPHA";
    }

    if (A == B && B == C) {
      Dosha = 4;
      dosha = "TRI";
    } else if (A == C) {
      Dosha = 5;
      dosha = "VATA KAPHA";
    } else if (A == B) {
      Dosha = 6;
      dosha = "VATA PITTA";
    } else if (B == C) {
      Dosha = 7;
      dosha = "PITTA KAPHA";
    }
    // return "UNKNOWN";
    _myBox.put('Dosha', '$dosha dosha');
    return dosha;
  }
  // void writeData(optionA, optionB, optionC){
  //   int opA(optionA/15)*100;
  // }

  int n = 0;
  int tapped = 0;
  int result = 0;
  bool quizEnd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 246, 234),
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          elevation: 0,
          title: end
              ? const Text(
                  'Your Result',
                  style: TextStyle(color: Colors.black),
                )
              : const Text(
                  'Find Your Dosha',
                  style: TextStyle(color: Colors.black),
                ),
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(255, 255, 246, 234),
        body: end
            ? SingleChildScrollView(
              child: Center(
                  //contents of dosha result
                  child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    const Divider(),
                    Text(
                      'Your Doshas',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        // color: Colors.red,
                        width: 200,
                        height: 100,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.orange, //New
                                blurRadius: 3,
                                offset: Offset(0, 1))
                          ],
                          // border:
                          //     Border.all(color: Colors.blueGrey),
                          color: tap1 ? Colors.orange : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
            
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Vata:  ${findPercent(optionA)}%',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Pitta:  ${findPercent(optionB)}%',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Kapha:  ${findPercent(optionC)}%',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        )),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Divider(),
                    SizedBox(
                      height: 30,
                    ),
                    //heading
                    Text('1. Vata Dosha', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 10,),
                    //description
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                          'Vata consists mostly of the two elements air and space (also known as ether) and is generally described as cold, light, dry, rough, flowing, and spacious. Autumn represents vata for its cool, crisp days.\nThose with the vata dosha are usually described as slim, energetic, and creative. They’re known for thinking outside the box but can become easily distracted. What’s more, their mood is highly dependent on the weather, people around them, and foods they eat.'),
                    ),
                    //strengths
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Strengths: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              'learn quickly, highly creative, multitasker, kind-hearted, flexible, “on the go,” naturally slim.')
                        ],
                      ),
                    ),
                    //weaknesses
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Weaknesses: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              'forgetful, anxious, unstable mood, can get overwhelmed easily, highly sensitive to the cold, has trouble sleeping, irregular appetite and eating patterns, prone to digestive issues and gas, poor circulation (cold hands and feet)According to Ayurveda, for optimal health, a vata-dominant person should follow a regular daily routine, manage stress through meditation and other calming activities, and maintain a warm body temperature by avoiding cold weather and consuming warm foods and drinks.')
                        ],
                      ),
                    ),
                    const Divider(),
                    SizedBox(height: 20,),
                    Text('2. Kapha Dosha', style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20),),
                    SizedBox(height: 10,),
                    //description
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                          'Kapha (pronounced “kuffa”) is based on earth and water. It can be described as steady, stable, heavy, slow, cold, and soft. Spring is known as kapha season, as many parts of the world slowly exit hibernation. People with this dosha are described as strong, thick-boned, and caring. They’re known for keeping things together and being a support system for others. Kapha-dominant people rarely get upset, think before acting, and go through life in a slow, deliberate manner.'),
                    ),
                    //strengths
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Strengths: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              'Empathetic, caring, trusting, patient, calm, wise, happy, romantic, strong bones and joints, healthy immune system.')
                        ],
                      ),
                    ),
                    //weaknesses
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Weaknesses: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              'prone to weight gain, slow metabolism, sluggishness, over-sleeping, breathing issues (i.e., asthma, allergies), higher risk of heart disease, mucus buildup, susceptible to depression, needs regular motivation and encouragement.')
                        ],
                      ),
                    ),
                    const Divider(),
                    SizedBox(height: 20,),
                    Text('3. Pitta Dosha', style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20),),
                    SizedBox(height: 10,),
                    //description
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                          'Known for being associated with a tenacious personality, the pitta dosha is based on fire and water. It’s commonly described as hot, light, sharp, oily, liquid, and mobile. Summer is known as pitta season for its sunny, hot days. People with pitta are said to usually have a muscular build, be very athletic, and serve as strong leaders. They’re highly motivated, goal-oriented, and competitive. Still, their aggressive and tenacious nature can be off-putting to some people, which can lead to conflict.'),
                    ),
                    //strengths
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Strengths: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              'Intelligent, purposeful, learns quickly, self-determined, masters skills easily, strong desire for success, strong, natural leaders, quick metabolism, good circulation, healthy skin and hair.')
                        ],
                      ),
                    ),
                    //weaknesses
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Weaknesses: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              'impatient, prone to conflict, always hungry, mood swings when hungry, prone to acne and inflammation, sensitive to hot temperatures.')
                        ],
                      ),
                    ),
                    const Divider(),
                    //endddddddddd dddddddd
                  ],
                )
                  //till here is the contents of result
            
                  // Text(
                  //   "You have ${findDosha(optionA, optionB, optionC)} dosha  - $Dosha",
                  //   style: const TextStyle(fontWeight: FontWeight.bold),
                  // ),
                  ),
            )
            : SingleChildScrollView(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[200],
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black, //New
                            blurRadius: 0.5,
                            offset: Offset(0, 0.5))
                      ],
                    ),
                    margin: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                    height: 600,
                    child: end
                        ? /*to do when qna ends**/ null
                        : start
                            ? Center(
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 25),
                                    Text(
                                      'Question $question/15',
                                      style: const TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      n < 10
                                          ? 'Physical Attributes'
                                          : 'Mental & Emotional Attributes',
                                      style: const TextStyle(
                                          color: Colors.orange,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    // [Question]
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(
                                        Quizes.questions[n],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange,
                                            fontSize: 20),
                                      ),
                                    ),
                                    // const SizedBox(height: 10),
                                    // question == 1
                                    //     ? Image.network(
                                    //         'https://qph.cf2.quoracdn.net/main-qimg-4dfc97928de912d25340b170ff5c4568-lq',
                                    //         height: 100,
                                    //         width: 100,
                                    //       )
                                    //     : question == 2
                                    //         ? Image.network('https://www.stockvault.net/data/2018/07/25/253398/preview16.jpg',height: 100,width: 100,)
                                    //         : Image.network(
                                    //             'https://qph.cf2.quoracdn.net/main-qimg-4dfc97928de912d25340b170ff5c4568-lq'),
                                    const SizedBox(height: 30),

                                    // [Option 1]
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          tapped = 1;
                                          tap2 = false;
                                          tap3 = false;
                                          tap1 = true;
                                        });
                                      },
                                      child: Container(
                                        // color: Colors.red,
                                        width: 320,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.orange, //New
                                                blurRadius: 3,
                                                offset: Offset(0, 1))
                                          ],
                                          // border:
                                          //     Border.all(color: Colors.blueGrey),
                                          color: tap1
                                              ? Colors.orange
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),

                                        child: Text(Quizes.option1[n],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: tap1
                                                    ? Colors.white
                                                    : Colors.orange,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    // [Option  2]
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          tapped = 2;
                                          tap2 = true;
                                          tap3 = false;
                                          tap1 = false;
                                        });
                                      },
                                      child: Container(
                                        // color: Colors.red,
                                        width: 320,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.orange, //New
                                                blurRadius: 3,
                                                offset: Offset(0, 1))
                                          ],
                                          // border:
                                          //     Border.all(color: Colors.blueGrey),
                                          color: tap2
                                              ? Colors.orange
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),

                                        child: Text(Quizes.option2[n],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: tap2
                                                    ? Colors.white
                                                    : Colors.orange,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    //[Option 3]
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          tapped = 3;
                                          tap2 = false;
                                          tap3 = true;
                                          tap1 = false;
                                        });
                                      },
                                      child: Container(
                                        // color: Colors.red,
                                        width: 320,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.orange, //New
                                                blurRadius: 3,
                                                offset: Offset(0, 1))
                                          ],
                                          // border:
                                          //     Border.all(color: Colors.blueGrey),
                                          color: tap3
                                              ? Colors.orange
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),

                                        child: Text(Quizes.option3[n],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: tap3
                                                    ? Colors.white
                                                    : Colors.orange,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                    const SizedBox(height: 5),

                                    const SizedBox(
                                      height: 20,
                                    ),

                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 90,
                                      height: 40,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (tap1) {
                                                optionA++;
                                              } else if (tap2) {
                                                optionB++;
                                              } else if (tap3) {
                                                optionC++;
                                              }
                                              if (tapped != 0) {
                                                if (end == true) {
                                                  result = 0;
                                                }
                                                if (n == 14 && end == false) {
                                                  //here will be the code after what to do after answering all 5 questions
                                                  // result += tapped;
                                                  end = true;
                                                }
                                                if (end == false) {
                                                  question++;
                                                  result += tapped;
                                                  tapped = 0;
                                                  n++;
                                                  tap2 = false;
                                                  tap3 = false;
                                                  tap4 = false;
                                                  tap1 = false;
                                                }
                                              }
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.orange,
                                          ),
                                          child: const Text(
                                            "Next",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    )
                                  ],
                                ),
                              )
                            : Center(
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 170,
                                      width: 300,
                                      child: const Text(
                                        'Based on centuries of Ayurvedic practice, an Ayurvedic practitioner can determine one’s dosha based on physical, emotional, mental, and behavioral characteristics. \n\nGive this QnA to find out your dosha.\nThere will be 15 questions 10 will be about Physical Attributes and 5 Emotional/Psycological Attributes',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    const Text("Start the QnA",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: Colors.orange)),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      height: 40,
                                      width: 90,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            start = true;
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.orange,
                                        ),
                                        child: const Text(
                                          'Start',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                  ),
                ),
              ));
  }
}
