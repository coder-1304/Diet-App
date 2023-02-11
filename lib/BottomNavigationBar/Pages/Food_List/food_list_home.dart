import 'package:diet_recall3/routes.dart';
import 'package:flutter/material.dart';

import 'food_blueprint.dart';
import 'food_selector.dart';

class FoodListHome extends StatefulWidget {
  FoodListHome({Key? key}) : super(key: key);

  @override
  State<FoodListHome> createState() => _FoodListHomeState();
}

class _FoodListHomeState extends State<FoodListHome> {
  bool start = true;

  // final List<Food> _Foods = [
  //   Food(
  //       name: 'Food Name here',
  //       image:
  //           'images/image_name_here',
  //       id: 1),
  //   Food(
  //       name: 'Paneer',
  //       image: 'images/paneer.jpg',
  //       id: 2),
  // ];
  final List <Food> _Foods=[
    Food(name: 'Chapati',  image: 'images/chapati.jpeg', id: 1),
    Food(name: 'Paneer',  image: 'images/panner.jpg', id: 2),
    Food(name: 'Aloo Paratha', image: 'images/alooParatha.jpeg', id: 3),
    Food(name: 'Dosa',  image: 'images/dosa.jpeg', id: 4),
    Food(name: 'Raita', image: 'images/raita.jpg', id: 5),
    Food(name:  'Milk' , image: 'images/milk.jpeg', id: 6),
    Food(name: 'Banana', image: 'images/banana.jpg', id: 8),
    Food(name: 'Mango', image: 'images/mango.jpg', id: 9),
    Food(name: 'Orange', image: 'images/orange.jpg', id: 10),
    Food(name: 'Oats', image: 'images/oats.jpg', id: 10),
    Food(name: 'Anjeer', image: 'images/anjeer.jpg', id: 10),
    Food(name: 'Corn Flakes', image: 'images/cornFlakes.jpg', id: 10),
    Food(name: 'Bread', image: 'images/bread.jpg', id: 10),
    Food(name: 'Curd', image: 'images/curd.jpg', id: 10),
    // Food(name: 'Butter Milk', image: 'images/logo.png', id: 10),
    // Food(name: 'Sev Paratha', image: 'images/logo.png', id: 10),
    // Food(name: 'Tea', image: 'images/logo.png', id: 10),
    

    // Food(name: 'Green Tea', image: 'images/logo.png', id: 10),
    Food(name: 'Paratha', image: 'images/paratha.jpg', id: 10),
    // Food(name: 'Carrot', image: 'images/logo.png', id: 10),
    // Food(name: 'Spinach', image: 'images/logo.png', id: 10),
    // Food(name: 'Brown Rice', image: 'images/logo.png', id: 10),
    
    Food(name: 'Apple', image:'images/apple.jpg' , id: 11),
    Food(name: 'Aata Halwa', image:'images/aataHalwa.jpg' , id: 11),
    Food(name: 'Pickle', image:'images/achar.jpg' , id: 12),
    Food(name: 'Aloo Gobi', image:'images/alooGobi.jpg' , id: 13),
    Food(name: 'Appe', image:'images/appe.jpg' , id: 14),
    Food(name: 'Aloo ', image:'images/alooSabji.jpg' , id: 15),
    Food(name: 'Avocodo ', image:'images/avocodo.jpg' , id: 16),
    Food(name: 'BakeSamosa', image:'images/bakeSamosa.jpg' , id: 17),
    Food(name: 'Banana Chips', image:'images/bananaChips.jpg' , id: 18),
    Food(name: 'Barfi', image:'images/barfi.jpg' , id: 19),
    Food(name: 'Beans', image:'images/beans.jpg' , id: 20),
    Food(name: 'Beet Root', image:'images/beetRoot.jpg' , id: 23),
    Food(name: 'Bhajiya', image:'images/bhajiya.jpg' , id: 24),
    Food(name: 'Bhelpuri', image:'images/bhelpuri.jpg' , id: 25),
    Food(name: 'Bhindi Sabzi', image:'images/bhindiSabzi.jpg' , id: 26),
    Food(name: 'Biryani', image:'images/biryani.jpg' , id: 27),
    Food(name: 'Bread Pakoda', image:'images/breadPakoda.jpg' , id: 28),
    Food(name: 'Besan Gatta', image:'images/besanGatta.jpg' , id: 29),
    Food(name: 'Burger', image:'images/burger.jpg' , id: 30),
    Food(name: 'Butter Chicken', image:'images/butterChicken.jpg' , id: 31),                           
    Food(name: 'Butterscotch Cake', image:'images/butterscotchCake.jpg' , id: 32),
    Food(name: 'Chakli', image:'images/chakli.jpg' , id: 33),
    Food(name: 'Chana Masala', image:'images/chanaMasala.jpg' , id: 34),
    Food(name: 'Chicken', image:'images/chicken.jpg' , id: 35),
    Food(name: 'Chiku', image:'images/chiku.jpg' , id: 36),
    Food(name: 'Chilli Paneer', image:'images/chilliPaneer.jpg' , id: 37),
    Food(name: 'ChocoBar', image:'images/chocoBar.jpg' , id: 38),
    Food(name: 'Chocolate Cake', image:'images/chocolateCake.jpg' , id: 39),
    Food(name: 'Chocolate Icecream', image:'images/chocolateIcecream.jpg' , id: 40),
    Food(name: 'ChocoLava', image:'images/chocoLava.jpg' , id: 41),
    Food(name: 'Chole Bhature', image:'images/choleBhature.jpg' , id: 42),
    Food(name: 'Chole Samosa', image:'images/choleSamosa.jpg' , id: 43),
    Food(name: 'Dabeli', image:'images/dabeli.jpg' , id: 44),
    Food(name: 'Dahi Bhalla', image:'images/dahiBhalla.jpg' , id: 45),
    Food(name: 'Dal', image:'images/dal.jpg' , id: 46),
    Food(name: 'Dal Baafle', image:'images/dalBaafle.jpg' , id: 47),
    Food(name: 'Dal Baati', image:'images/dalBaati.jpg' , id: 48),
    Food(name: 'Dal Makhani', image:'images/dalMakhani.jpg' , id: 49),
    Food(name: 'Dal Pakwan', image:'images/dalPakwan.jpg' , id: 50),
    Food(name: 'Dates', image:'images/dates.jpg' , id: 51),
    Food(name: 'Dum Aloo', image:'images/dumAloo.jpg' , id: 52),
    Food(name: 'Egg Burji', image:'images/eggBurji.jpg' , id: 53),
    Food(name: 'Egg Curry', image:'images/eggCurry.jpg' , id: 54),
    Food(name: 'Egg Roll', image:'images/eggRoll.jpg' , id: 55),
    Food(name: 'Fafda', image:'images/fafda.jpg' , id: 56),
    Food(name: 'Firni', image:'images/firni.jpg' , id: 57),
    Food(name: 'Fish Curry', image:'images/fishCurry.jpg' , id: 58),
    Food(name: 'Fish Pakora', image:'images/fishPakora.jpg' , id: 59),
    Food(name: 'French Fries', image:'images/frenchFries.jpg' , id: 60),
    Food(name: 'Fried Momos', image:'images/friedMomos.jpg' , id: 61),
    Food(name: 'Fruit Custard', image:'images/fruitCustard.jpg' , id: 62),
    Food(name: 'Fry Fish', image:'images/fryFish.jpg' , id: 63),
    Food(name: 'Gajjar Halwa', image:'images/gajjarHalwa.jpg' , id: 64),
    Food(name: 'Garlic Bread', image:'images/garlicBread.jpg' , id: 65),
    Food(name: 'Garlic Naan', image:'images/garlicNaan.jpg' , id: 66),
    Food(name: 'Ghewar', image:'images/ghewar.jpg' , id: 67),
    Food(name: 'Gobi Manchurian', image:'images/gobiManchurian.jpg' , id: 68),
    Food(name: 'Grapes', image:'images/grapes.jpg' , id: 69),
    Food(name: 'Guava', image:'images/guava.jpg' , id: 70),
    Food(name: 'Gulab Jamun', image:'images/gulabJamun.jpg' , id: 71),
    Food(name: 'Harabhara Kabab', image:'images/harabharaKabab.jpg' , id: 72),
    Food(name: 'Idli Sambhar', image:'images/idliSambhar.jpg' , id: 73),
    Food(name: 'Jalebi', image:'images/jalebi.jpg' , id: 74),
    Food(name: 'Jeera Aloo', image:'images/jeeraAloo.jpg' , id: 75),
    Food(name: 'kachori', image:'images/kachori.jpg' , id: 76),
    Food(name: 'Kada Halwa', image:'images/kadaHalwa.jpg' , id: 77),
    Food(name: 'Kadai Paneer', image:'images/kadaiPaneer.jpg' , id: 78),
    Food(name: 'Kaju Katli', image:'images/kajuKatli.jpg' , id: 79),
    Food(name: 'Karela Sabzi', image:'images/karelaSabzi.jpg' , id: 80),
    Food(name: 'Katori Chaat', image:'images/katoriChaat.jpg' , id: 81),
    Food(name: 'Khaman', image:'images/khaman.jpg' , id: 82),
    Food(name: 'Kheer', image:'images/kheer.jpg' , id: 83),
    Food(name: 'Khichdi', image:'images/khichdi.jpg' , id: 84),
    Food(name: 'Kiwi', image:'images/kiwi.jpg' , id: 85),
    Food(name: 'Kofta', image:'images/kofta.jpg' , id: 86),
    Food(name: 'Kulcha', image:'images/kulcha.jpg' , id: 87),
    Food(name: 'Kulfi', image:'images/kulfi.jpg' , id: 88),
    Food(name: 'Laddu', image:'images/laddu.jpg' , id: 89),
    Food(name: 'Lassi', image:'images/lassi.jpg' , id: 90),
    Food(name: 'Lauki Sabzi', image:'images/laukiSabzi.jpg' , id: 91),
    Food(name: 'Litchi', image:'images/litchi.jpg' , id: 92),
    Food(name: 'Maggie', image:'images/maggie.jpg' , id: 93),
    Food(name: 'Makka Roti', image:'images/makkaRoti.jpg' , id: 94),
    Food(name: 'Malpua', image:'images/malpua.jpg' , id: 95),
    Food(name: 'Mango', image:'images/mango.jpg' , id: 96),
    Food(name: 'Masala dosa', image:'images/masaladosa.jpg' , id: 97),
    Food(name: 'Masala Papad', image:'images/masalaPapad.jpg' , id: 98),
    Food(name: 'Mushroom Veg', image:'images/mushroomSabzi.jpg' , id: 99),
    Food(name: 'Mutton', image:'images/mutton.jpg' , id: 100),
    Food(name: 'Matar Paneer', image:'images/matarPaneer.jpg' , id: 101),
    Food(name: 'Missi Roti', image:'images/missiRoti.jpg' , id: 102),
    Food(name: 'Mix Veg', image:'images/mixVeg.jpg' , id: 103),
    Food(name: 'Modak', image:'images/modak.jpg' , id: 104),
    Food(name: 'Moong Halwa', image:'images/moongHalwa.jpg' , id: 105),
    Food(name: 'MuttonCurry', image:'images/muttonCurry.jpg' , id: 106),
    Food(name: 'Naan', image:'images/naan.jpg' , id: 107),
    Food(name: 'Noodles', image:'images/noodles.jpg' , id: 108),
    Food(name: 'Omlet', image:'images/omlet.jpg' , id: 109),
    Food(name: 'Palak Paneer', image:'images/palakPaneer.jpg' , id: 110),
    Food(name: 'Paneer Paratha', image:'images/paneerParatha.jpg' , id: 111),
    Food(name: 'Paneer Roll', image:'images/paneerRoll.jpg' , id: 112),
    Food(name: 'PaniPuri', image:'images/paniPuri.jpg' , id: 113),
    Food(name: 'Papad', image:'images/papad.jpg' , id: 114),
    Food(name: 'Papaya', image:'images/papaya.jpg' , id: 115),
    Food(name: 'PapdiChaat', image:'images/papdiChaat.jpg' , id: 116),
    Food(name: 'Pasta', image:'images/pasta.jpg' , id: 117),
    Food(name: 'Pear', image:'images/pear.jpg' , id: 118),
    Food(name: 'Petha', image:'images/petha.jpg' , id: 119),
    Food(name: 'Pineapple', image:'images/pineapple.jpg' , id: 120),
    Food(name: 'Pizza', image:'images/pizza.jpg' , id: 121),
    Food(name: 'Poha', image:'images/poha.jpg' , id: 122),
    Food(name: 'Pomogranate', image:'images/pomogranate.jpg' , id: 123),
    Food(name: 'Potato Chips', image:'images/potatoChips.jpg' , id: 124),
    Food(name: 'Prawns', image:'images/prawns.jpg' , id: 125),
    Food(name: 'Pulao', image:'images/pulao.jpg' , id: 126),
    Food(name: 'Puri', image:'images/puri.jpg' , id: 127),
    Food(name: 'Rajma Chawal', image:'images/rajmaChawal.jpg' , id: 128),
    Food(name: 'Rasgulla', image:'images/rasgulla.jpg' , id: 129),
    Food(name: 'RasMalai', image:'images/rasMalai.jpg' , id: 130),
    Food(name: 'Rice', image:'images/rice.jpg' , id: 131),
    Food(name: 'Sabudana Khichdi', image:'images/sabudanaKhichdi.jpg' , id: 132),
    Food(name: 'Sambar Vada', image:'images/sambarVada.jpg' , id: 133),
    Food(name: 'Samosa', image:'images/samosa.jpg' , id: 134), 
    Food(name: 'Sandesh', image:'images/sandesh.jpg' , id: 135),
    Food(name: 'Sandwich', image:'images/sandwich.jpg' , id: 136),
    Food(name: 'Sarson Saag', image:'images/sarsonSaag.jpg' , id: 137),
    Food(name: 'Schezwan Noddles', image:'images/schezwanNoddles.jpg' , id: 138),
    Food(name: 'Schezwan Rice', image:'images/schezwanRice.jpg' , id: 139),
    Food(name: 'Sev', image:'images/sev.jpg' , id: 140),
    Food(name: 'Seviyan Kheeri', image:'images/seviyanKheer.jpg' , id: 141),
    Food(name: 'Sev Tomator', image:'images/sevTomator.jpg' , id: 142),
    Food(name: 'Shrikhand', image:'images/shrikhand.jpg' , id: 143),
    Food(name: 'Sprill Potato', image:'images/sprillPotato.jpg' , id: 144),
    Food(name: 'Spring Roll', image:'images/springRoll.jpg' , id: 145),
    Food(name: 'Steam Momos', image:'images/steamMomos.jpg' , id: 146),
    Food(name: 'Strawberry', image:'images/strawberry.jpg' , id: 147),
    Food(name: 'Strawberry Cake', image:'images/strawberryCake.jpg' , id: 149),
    Food(name: 'Sweet Corn', image:'images/sweetCorn.jpg' , id: 150),
    Food(name: 'Tandoori Fish', image:'images/tandooriFish.jpg' , id: 151),
    Food(name: 'Tandoori Roti', image:'images/tandooriRoti.jpg' , id: 152),
    Food(name: 'Toast', image:'images/toast.jpg' , id: 153),
    Food(name: 'Upma', image:'images/upma.jpg' , id: 154),
    Food(name: 'Uttapam', image:'images/uttapam.jpg' , id: 155),
    Food(name: 'Vada Pav', image:'images/vadaPav.jpg' , id: 156),
    Food(name: 'Vanilla Cake', image:'images/vanillaCake.jpg' , id: 157),
    Food(name: 'Veg Biryani', image:'images/vegBiryani.jpg' , id: 158),
    Food(name: 'Watermelon', image:'images/watermelon.jpg' , id: 159),
    Food(name: 'Whitesauce Pasta', image:'images/whitesaucePasta.jpg' , id: 160),
    Food(name: 'Boiled Egg', image:'images/boiledEgg.jpg' , id: 161),
    Food(name: 'Dum Briyani', image:'images/dumBriyani.jpg' , id: 162),
        
  ];

  List<Food> _foundedFoods = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  onSearch(String search) {
    setState(() {
      _foundedFoods =
          _Foods.where((Food) => Food.name.toUpperCase().contains(search))
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.01),
      // backgroundColor: Colors.green[100],   //main background
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.orange, //appbar background
        title: Container(
          child: TextFormField(
            initialValue: "",
            onChanged: (value) => onSearch(value.toUpperCase()),
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.orange[50], //searchbar color
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                hintText: "Search Foods",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                )),
          ),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: _foundedFoods.length > 0
              ? ListView.builder(
                  itemCount: _foundedFoods.length,
                  itemBuilder: (context, index) {
                    return FoodComponent(Food: _foundedFoods[index]);
                  })
              : Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Try searching\n\nor',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.manualFoodSelector);
                        },
                        child: Text(
                          'Add Manually',
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                ))),
    );
  }

  FoodComponent({required Food Food}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
                width: 60,
                height: 60,
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(50),
                  child: Image.asset(Food.image),    //IMAGE
                )),
            Column(children: [
              Text('  ${Food.name}',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              // Text('subtitle'),
            ])
          ]),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodSelector(
                            id: Food.name))); //navigation and sending data
              },
              child: Text('Select'),
              style: ElevatedButton.styleFrom(primary: Colors.orange))
        ],
      ),
    );
  }
}
