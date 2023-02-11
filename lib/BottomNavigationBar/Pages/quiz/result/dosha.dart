import 'package:flutter/material.dart';

class vata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Vata Dosha"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  height: 500,
                  width: 400,

                  // color: Colors.orange,
                  child: Column(
                    children: [
                      Text(
                          "Vata Dosha is composed of Akasa (ether) and Vayu (air) Mahabhutas."),
                      SizedBox(height: 10),
                      Text(
                          "According to Ayurveda medicine, it relates to the nervous system and controls breathing, blinking, and circulation. Proponents of the medicine system also say vata is also irregular, rough, flowing, spacious, cold, light, and dry."),
                      SizedBox(height: 10),
                      // Text(
                      //     "Vata dosha characteristics : Vata people often have a small or thin frame and dry skin and hair. They are sensitive to cold weather and may have cold extremities, circulation issues, and joint pain. Their personalities can be entertaining, dynamic, and enthusiastic. They are also said to be creative, perceptive, and sensitive people.Physically and mentally active, they often multi-task and talk quickly.Vata people may be easily overwhelmed and be prone to changeable moods. When vata people become aggravated, their emotions may manifest as fear, anxiety, and nervousness."),
                      SizedBox(height: 10),
                      Text("A vata dosha diet may include:"),
                      //SizedBox(height: 10),
                      Text(
                          "Beverages: Buttermilk, warm teas, nut milk, and warm or room temperature water"),
                      //SizedBox(height: 10),
                      Text(
                          "Meat and eggs: Beef, chicken, turkey, and eggs                                                "),
                      Text(
                          "Grains: Rice, oats, quinoa, and wheat                                                    "),
                      Text(
                          "Fruits: Berries, peaches, mangoes, melons, bananas, avocados, coconuts, and cooked apples"),
                      Text(
                          "Vegetables: Carrots, beets, squash, lentils, mung beans, sweet potatoes, and green, leafy vegetables"),
                      Text(
                          "Spices: Ginger, basil, bay, cinnamon, nutmeg, cloves, parsley, and turmeric"),
                      Text(
                          "Nuts and seeds: Almonds, chestnuts, cashews, pistachios, and sunflower and pumpkin seeds"),
                      Text(
                          "Oils: Ghee, avocado oil, coconut oil, sesame oil, and extra virgin olive oil"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class pitta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pitta Dosha"),
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
                    child: Column(
                      children: [
                        Text(
                            "Pitta Dosha is composed of Tejas or Agni (fire) and Ap Mahabhutas."),
                        SizedBox(height: 10),
                        Text(
                            " Consequently, people with Pitta disorders struggle with upset stomachs, heartburn and diarrhoea. Their metabolism becomes hyperacidic, they burp frequently, perspire and are emotionally sensitive"),
                        SizedBox(height: 10),

                        SizedBox(height: 10),
                        Text("A pitta dosha diet may include:"),
                        //SizedBox(height: 10),
                        Text(
                            "Fruits: Apples, apricots, berries, cherries, coconut, dates, pear, papaya, plums, pomegranate, mango, orange, melons, watermelon, strawberries, figs and grapes"),
                        //SizedBox(height: 10),
                        Text(
                            "Meat and eggs: chicken, shrimp, rabbit, venison, fish (freshwater), eggs (white) and buffalo meat                                               "),
                        Text(
                            "Grains: Barley, couscous, oats, quinoa, granola, wheat, tapioca, wheat bran, pasta, pancakes, amaranth and rice (basmati) among others                                                   "),
                        // Text(
                        //     "Fruits: Berries, peaches, mangoes, melons, bananas, avocados, coconuts, and cooked apples"),
                        Text(
                            "Vegetables: Avocado, broccoli, cauliflower, celery, cilantro/coriander, peas, pumpkin, radishes, cabbage, sweet potato, spinach, lettuce, okra, cucumber, potatoes, leafy greens, and mushrooms among others."),
                        Text(
                            "Spices: Basil, black pepper, coriander, ginger, fennel, mint, orange peel, saffron, peppermint, cinnamon, dill, cardamom, parsley and vanilla."),
                        Text(
                            "Nuts and seeds:  almonds (soaked & peeled), flaxseeds, coconuts, pumpkin seeds, sunflower seeds and popcorns (unsalted & plain)"),
                        Text(
                            "Oils: Coconut oil, flaxseed oil, olive oil, primrose oil, sunflower oil, soy oil, ghee and walnut oil"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class kapha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kapha Dosha"),
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
                    child: Column(
                      children: [
                        Text(
                            "Kapha Dosha is composed of Ap (water) and Prithvi (earth) Mahabhutas.."),
                        SizedBox(height: 10),
                        Text(
                            "If Kapha gets the upper hand, people become inflexible and increasingly cut back the radius of their existence. They perceive the intense movements and changes of everyday life as exhausting. The result is that they increasingly withdraw from life, shutting themselves off and becoming emotionally and spiritually isolated from their surroundings. It does not take long for boredom to set in. And this is accompanied by food cravings and an uncontrollable desire to consume sweet things, fatty foods, cheese, sausage products. The result is obvious: weight gain and excessive fat in the tissues."),
                        SizedBox(height: 10),
                        // Text(
                        //     "Vata dosha characteristics : Vata people often have a small or thin frame and dry skin and hair. They are sensitive to cold weather and may have cold extremities, circulation issues, and joint pain. Their personalities can be entertaining, dynamic, and enthusiastic. They are also said to be creative, perceptive, and sensitive people.Physically and mentally active, they often multi-task and talk quickly.Vata people may be easily overwhelmed and be prone to changeable moods. When vata people become aggravated, their emotions may manifest as fear, anxiety, and nervousness."),
                        SizedBox(height: 10),
                        Text("A kapha dosha diet may include:"),
                        //SizedBox(height: 10),
                        Text(
                            "Beverages: fresh fruit and vegetable juices & smoothie and hot beverages like herbal tea & soups "),
                        //SizedBox(height: 10),
                        Text(
                            "Meat and eggs: white chicken, eggs, turkey and other variety of seafood                                                 "),
                        Text(
                            "Grains: barley, corn, millet rye and buckwheat                                                    "),
                        Text(
                            "Fruits: apples, pears, watermelon, pomegranates, apricots and cranberries "),
                        // Text(
                        //     "Vegetables: Carrots, beets, squash, lentils, mung beans, sweet potatoes, and green, leafy vegetables"),
                        Text(
                            "Spices:  pepper, mustard seeds, ginger, cloves and cayenne"),
                        Text(
                            "Oils & nuts:: Kapha diet suggests intake of lighter oils like olive oil, almond oil, sunflower oil and pure ghee. Also, favouring pumpkin and sunflower seeds is a better option over heavy nuts "),
                        // Text(
                        //     "Oils: Ghee, avocado oil, coconut oil, sesame oil, and extra virgin olive oil"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
