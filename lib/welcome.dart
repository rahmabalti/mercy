import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'animation.dart';
import 'main.dart';
//import 'login.dart';
//import 'logUP.dart';
class WelcomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

 body: Stack(
      children: [
         Image.asset('assets/logo.png', width: double.infinity, height: 250, fit: BoxFit.cover),
          SizedBox( height: 20 ),
        Image.asset('assets/bien.png', width: double.infinity, height: 250, fit: BoxFit.cover),
        Positioned(
          // The Positioned widget is used to position the text inside the Stack widget
          top: 10,
          right: 10,

          child: Container(
            // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
            width: 300,
            color: Colors.black54,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'BienVenue',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      




/*backgroundColor: Color(0xFFEDECF2),
body: SingleChildScrollView(child: Container(margin: EdgeInsets.symmetric(vertical: 60,horizontal: 30),
child: Column(children: [
  DelayedAnimation(delay: 1500,child: Container(height: 170,child: Image.asset('assets/logo.png')),
  ),*/

 
 /* DelayedAnimation(delay: 3500,child: Container(height: 400,margin:EdgeInsets.only(top: 30,bottom: 20,),
  child:Text(
    "Bienvenue", textAlign: TextAlign.center,style: GoogleFonts.poppins(color: Colors.black,fontSize:16,),
  ),),
  ),*/
  DelayedAnimation(delay: 4500,
  child: Container(width: double.infinity,
  child: ElevatedButton(style: ElevatedButton.styleFrom(primary: d_red,),
  child: Text('Connecter'),
  onPressed: () {},
  ),),),
  DelayedAnimation(delay: 4500,child: Container(width: double.infinity,
  child: ElevatedButton(style: ElevatedButton.styleFrom(primary: d_red,),child: Text('Inscrire'),
  onPressed: () {},
  ),),),
 SizedBox( height: 20 ),
  Image.asset('assets/dessous.png', width: double.infinity, height: 250, fit: BoxFit.cover),
  ],
  ),
 
    );
    
  }
}