import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class FoodTaken extends StatefulWidget {
  FoodTaken({Key? key}) : super(key: key);

  @override
  State<FoodTaken> createState() => _FoodTakenState();
}

class _FoodTakenState extends State<FoodTaken> {
  int i=0;
  final _myBox = Hive.box('mybox');
  // List<String>foodTaken=['list1','list2','list3','sdflj'];
  // foodTaken.add();
  
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Taken'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text('${_myBox.get('quantity').length}'),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context,int index){
              
              return Container(
                color: Colors.grey[200],
                child: ListTile(
                  leading: Icon(Icons.food_bank,size: 45,),
                  title: Text(_myBox.get('foodTaken')[index]),
                  subtitle: Text(_myBox.get('quantity')[index]),
                  trailing: Icon(Icons.how_to_reg),
                  //title subtitle leading
                  // title: ,
                  
                ),
              );
            }, itemCount: _myBox.get('foodTaken').length,),//number of items in list
          ],
        ),
      ),
    );
  }
}