import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class weightInput extends StatefulWidget {
  
  final fieldText = TextEditingController();
  weightInput({super.key});

  void clearText() {
    fieldText.clear();
  }

  @override
  State<weightInput> createState() => _weightInputState();
}

class _weightInputState extends State<weightInput> {
  String w="";
  final _myBox = Hive.box('mybox');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          // margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 248, 238),
            border: Border.all(color: Colors.orange),
          ),
          width: 350,
          height: 250,
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 15)),
              const Text(
                "Enter your current weight below",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                width: 270,
                height: 50,
                child: TextField(
                  onChanged: (value) {
                    w=value;
                  },
                  decoration: const InputDecoration(
                    focusColor: Colors.orange,
                    border: OutlineInputBorder(),
                    hintText: 'Enter your current weight',
                  ),
                  controller: TextEditingController(),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 10),
                child: ElevatedButton(
                  // onPressed: ,
                  onPressed: () {
                    setState(() {
                      double wt=double.parse(w);
                    String fi=wt.toStringAsFixed(2);
                    _myBox.put('CurrWeight',fi);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: const Duration(milliseconds: 1400),
                    backgroundColor: Colors.grey.shade100,
                    content: const Text(
                      "Updated",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ));
                  Navigator.pop(context);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    // fixedSize: Size(400, 200),
                    // shape: CircleBorder(),

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Colors.orange,
                    onPrimary: Colors.black,
                  ),
                  child: const Text("Update"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
