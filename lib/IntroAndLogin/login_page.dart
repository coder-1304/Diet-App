import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.bnbHome);

      setState(() {
        changeButton = false;
      });
    }
  }


  //write data
  void writeData(String k, String v){
    _myBox.put(k, v);
  }

  final _myBox = Hive.box('mybox');
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset('assets/images/diet.png'),
                  SizedBox(height: 200),
                  Center(
                    child: Text(
                      'Login to Diet Recall',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: Column(children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Enter Email', labelText: 'Email'),
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return 'Username cannot be empty';
                          }
                          return null;
                        }),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
          
                      TextFormField(                        
                        onChanged: (value) {
                          
                        },
            
                        obscureText: true,
                        decoration: const InputDecoration( 
                            hintText: 'Enter Password', labelText: 'Password'),
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return 'Password cannot be empty';
                          }
                          else if(value.length<6)
                          {
                            return 'Password length must be atleast 6';
                          }
                          return null;
                        }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          _myBox.put('newUser', '0');
                          Navigator.pushNamed(context, MyRoutes.bnbHome);
                          
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 50,
                          width: changeButton ? 50 : 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8),
                          ),
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                      SizedBox(height:10),
                      Text('OR',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height:10),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, MyRoutes.enterDetails);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 50,
                          width: changeButton ? 50 : 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8),
                          ),
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  'SignUp',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
