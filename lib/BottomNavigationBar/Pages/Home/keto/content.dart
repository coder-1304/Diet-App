import 'dart:html';

import 'package:flutter/material.dart';
import 'homes.dart';

class what_is_keto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Basics",
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    height: 500,
                    width: 400,
                    child: Column(children: const [
                      Text(
                        "Keto basics",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      SizedBox(height: 10),
                      Text(
                          "The ketogenic diet is a very low carb, high fat diet that shares many similarities with the Atkins and low carb diets.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                          )),
                      SizedBox(height: 10),
                      Text(
                          "It involves drastically reducing carbohydrate intake and replacing it with fat. This reduction in carbs puts your body into a metabolic state called ketosis.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                          )),
                      SizedBox(height: 10),
                      Text(
                          "When this happens, your body becomes incredibly efficient at burning fat for energy. It also turns fat into ketones in the liver, which can supply energy for the brain.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                          )),
                      SizedBox(height: 10),
                      Text(
                          "Ketogenic diets can cause significant reductions in blood sugar and insulin levels. This, along with the increased ketones, has some health benefits. ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "SUMMARY                                                      ",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "The keto diet is a low carb, high fat diet. It lowers blood sugar and insulin levels and shifts the body’s metabolism away from carbs and toward fat and ketones.",
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Categories",
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    height: 500,

                    width: 400,

                    // color: Colors.orange,
                    child: SingleChildScrollView(
                      child: SingleChildScrollView(
                        child: Column(children: const [
                          Text(
                            "Different types of ketogenic diets",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "There are several versions of the ketogenic diet, including:",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 15),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' Standard ketogenic diet (SKD):',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(
                                    text:
                                        'his is a very low carb, moderate protein and high fat diet. It typically contains 70% fat, 20% protein, and only 10% carbs.',
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Cyclical ketogenic diet (CKD):',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(
                                    text:
                                        'his diet involves periods of higher carb refeeds, such as 5 ketogenic days followed by 2 high carb days.',
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Targeted ketogenic diet (TKD):',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(
                                    text:
                                        ' This diet allows you to add carbs around workouts.',
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'High protein ketogenic diet:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                TextSpan(
                                    text:
                                        'This is similar to a standard ketogenic diet, but includes more protein. The ratio is often 60% fat, 35% protein, and 5% carbs.',
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "However, only the standard and high protein ketogenic diets have been studied extensively. Cyclical or targeted ketogenic diets are more advanced methods and primarily used by bodybuilders or athletes.",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "SUMMARY                                                      ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "There are several versions of the keto diet. The standard (SKD) version is the most researched and most recommended.",
                              style: TextStyle(
                                fontSize: 16,
                              )),
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class food_eat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Foods to Eat",
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    height: 500,
                    width: 400,
                    alignment: Alignment.topLeft,
                    child: Column(children: const [
                      // Text(
                      //   "Following intakes must be taken:",
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold, fontSize: 30),
                      // ),
                      //  textWidthBasis: TextWidthBasis.longestLine,
                      SizedBox(height: 10),
                      Text(
                          "You should base the majority of your meals around these foods:",
                          //textAlign: TextAlign.left,
                          // textWidthBasis: TextWidthBasis.longestLine,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                      SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Meat:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    ' red meat,steak,ham,sausage,bacon,chicken and turkey.',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'fatty fish:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    ' salmon, trout, tuna, and mackerel.                                                 \n\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            // SizedBox(height: 10,),
                            TextSpan(
                                text: 'eggs:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text: ' pastured or omega-3 whole eggs.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'butter and cream: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text: ' grass-fed butter and heavy cream.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'cheese: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'unprocessed cheeses like cheddar, goat, cream, blue, or mozzarella.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'nuts and seeds: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'almonds, walnuts, flaxseeds, pumpkin seeds, chia seeds.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'healthy oils: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'extra virgin olive oil, and avocado oil.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'low carb veggies: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'green veggies, tomatoes, onions, peppers, etc.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'condiments:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text: 'salt, pepper, herbs, and spices.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class food_avoid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Foods to Avoid",
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    height: 500,
                    width: 400,
                    alignment: Alignment.topLeft,
                    child: Column(children: const [
                      SizedBox(height: 10),
                      Text(
                          "Here’s a list of foods that need to be reduced or eliminated on a ketogenic diet:",
                          //textAlign: TextAlign.left,
                          // textWidthBasis: TextWidthBasis.longestLine,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                      SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'sugary foods:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'soda, fruit juice, smoothies, cake, ice cream, candy, etc.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),

                            TextSpan(
                                text: 'grains or starches:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    ' wheat-based products, rice, pasta, cereal, etc.    \n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            // SizedBox(height: 10,),
                            TextSpan(
                                text: 'fruit:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'all fruit, except small portions of berries like strawberries.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'beans or legumes: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    ' peas, kidney beans, lentils, chickpeas, etc.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'root vegetables and tubers: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'potatoes, sweet potatoes, carrots, parsnips, etc.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'low fat or diet products: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'low fat mayonnaise, salad dressings, and condiments\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'some condiments or sauces: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'barbecue sauce, honey mustard, teriyaki sauce, ketchup, etc..\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'unhealthy fats:',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'processed vegetable oils, mayonnaise, etc.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'alcohol: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text: 'beer, wine, liquor, mixed drinks.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class health_benifits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Health benifits of keto",
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    height: 500,
                    width: 400,
                    alignment: Alignment.topLeft,
                    child: Column(children: const [
                      SizedBox(height: 10),
                      Text(
                          "Studies have now shown that the diet can have benefits for a wide variety of different health conditions:",
                          //textAlign: TextAlign.left,
                          // textWidthBasis: TextWidthBasis.longestLine,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          )),
                      SizedBox(height: 10),
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Heart disease. ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'The ketogenic diet can help improve risk factors like body fat, HDL (good) cholesterol levels, blood pressure, and blood sugar\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),

                            TextSpan(
                                text: 'Cancer.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    ' The diet is currently being explored as an additional treatment for cancer, because it may help slow tumor growth.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            // SizedBox(height: 10,),
                            TextSpan(
                                text: 'Alzheimer’s disease.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'The keto diet may help reduce symptoms of Alzheimer’s disease and slow its progression.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'Epilepsy. ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'Research has shown that the ketogenic diet can cause significant reductions in seizures in epileptic children.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'Parkinson’s disease. ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'Although more research is needed, one study found that the diet helped improve symptoms of Parkinson’s disease.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'Polycystic ovary syndrome.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'The ketogenic diet can help reduce insulin levels, which may play a key role in polycystic ovary syndrome. \n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            TextSpan(
                                text: 'Brain injuries.  ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            TextSpan(
                                text:
                                    'Some research suggests that the diet could improve outcomes of traumatic brain injuries.\n',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "A sample keto meal plan for 1 week",
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    height: 500,
                    width: 400,
                    alignment: Alignment.topLeft,
                    child: SingleChildScrollView(
                      child: Column(children: const [
                        SizedBox(height: 10),
                        Text(
                            "To help get you started, here’s a sample ketogenic diet meal plan for one week:",
                            //textAlign: TextAlign.left,
                            // textWidthBasis: TextWidthBasis.longestLine,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        SizedBox(height: 15),
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Monday                  \n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              TextSpan(
                                  text: '\nbreakfast:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      '  veggie and egg muffins with tomatoes\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'lunch:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      ' chicken salad with olive oil, feta cheese, olives, and a side salad\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'dinner:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'salmon with asparagus cooked in butter\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Tuesday                      \n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              TextSpan(
                                  text: '\nbreakfast:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'egg, tomato, basil, and spinach omelet\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'lunch:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'almond milk, peanut butter, spinach, cocoa powder, and stevia milkshake (more keto smoothies here) with a side of sliced strawberries\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'dinner:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: 'cheese-shell tacos with salsa\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Wednesday                      \n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              TextSpan(
                                  text: '\nbreakfast:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'nut milk chia pudding topped with coconut and blackberries\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'lunch:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: 'avocado shrimp salad\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'dinner:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'pork chops with Parmesan cheese, broccoli, and salad\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Thursday                      \n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              TextSpan(
                                  text: '\nbreakfast:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'omelet with avocado, salsa, peppers, onion, and spices\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'lunch:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'a handful of nuts and celery sticks with guacamole and salsa\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'dinner:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      ' chicken stuffed with pesto and cream cheese, and a side of grilled zucchini\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Friday                     \n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              TextSpan(
                                  text: '\nbreakfast:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'sugar-free Greek, whole milk yogurt with peanut butter, cocoa powder, and berries\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'lunch:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'ground beef lettuce wrap tacos with sliced bell peppers\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'dinner:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      ' loaded cauliflower and mixed veggies\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Saturday                     \n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              TextSpan(
                                  text: '\nbreakfast:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'cream cheese pancakes with blueberries and a side of grilled mushrooms\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'lunch:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: 'Zucchini and beet “noodle” salad\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'dinner:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'white fish cooked in olive oil with kale and toasted pine nuts\n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'Sunday                                    \n',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              TextSpan(
                                  text: '\nbreakfast:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'fried eggs with and mushrooms                                                 \n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'lunch:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      ' low carb sesame chicken and   broccoli       \n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              TextSpan(
                                  text: 'dinner:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      'spaghetti squash Bolognese                  \n',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
