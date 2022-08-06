 import 'package:flutter/material.dart';
import 'package:flutter_application_3/welcome.dart';

//import 'login.dart';
const d_red = const Color(0xFFFE9717D);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
     // home: Pagelogin(),
      home: WelcomePage(),
      //home:MyApp2(),
    );
  }
}

/*class MyApp2 extends StatelessWidget{
  
  Widget build(BuildContext context){
    return Scaffold(








      
    );
    
    
    
    
    
    
    
    
    }}*/
    
