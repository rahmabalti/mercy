
//import 'login.dart';
import 'package:flutter/material.dart';

import 'login.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatefulWidget {
  _SignupPage createState()=>new _SignupPage();
}

class _SignupPage extends State<SignupPage>{
   double height;
 double width;
  
  TextEditingController userRole  = new TextEditingController(); 
  TextEditingController userName  = new TextEditingController(); 
  TextEditingController email  = new TextEditingController(); 
  TextEditingController passWord  = new TextEditingController();
  
  final GlobalKey<FormState> xfromkey =GlobalKey<FormState>();
  //final auth =FirebaseAuth.instance ;
   // Declare this variable
int selectedRadio;
 
@override
void initState() {
  super.initState();
  selectedRadio = 0;
}
 
// Changes the selected value on 'onChanged' click on each radio button
setSelectedRadio(int val) {
  setState(() {
    selectedRadio = val;
  });
}
  @override
  Widget build(BuildContext context){
    height= MediaQuery.of(context).size.height;
   
   width= MediaQuery.of(context).size.width;
return Scaffold(
resizeToAvoidBottomInset: true,
backgroundColor: Colors.white,

 
        
body:Center(
            child: Container(
      width: 400,
      height: 400,
      color: Colors.white10,
       /*Form(
  
  key: xfromkey,*/
  child:Stack(
        children:[
          Column(children:[
            Container(height:height*.5,
            decoration: BoxDecoration(
              color: const Color(0xFF4ad7d1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              )
            
              ),
              ),


               Container(
                  decoration: BoxDecoration(
              color: const Color(0xFF4ad7d1),
             
              ),
            
              
                 child: Container(height:height*.5,
            decoration: BoxDecoration(
              color:  Colors.white,
               borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
            
            ),
            ),
               ),),
           ],
            ),
       
       Container( 
    child:ListView(
    children: [
      Container(   
        
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children:<Widget> [
  Text("Inscription",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
           color: Color(0XFF001730),
  
        ),),
  SizedBox(
  height: 20,
      ),
         Text("Créer votre compte, C'est gratuit",
      style: TextStyle(
        fontSize: 15,
        color: Colors.grey[700]
      ),)
          ],
        ),
      Column(
  children:<Widget> [
    TextFormField(
controller: userName,
validator:(String input){
    if (input.isEmpty){
    return 'Entrez votre nom';
    }
    return null;
    },
  
  decoration: InputDecoration(labelText: 'Nom & Prénom'),
  ),
    TextFormField(
  controller: email,
  validator:(String input){
    if (input.isEmpty){
    return 'Enter votre email';
    }
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(input)){
    return 'Entrer votre email';
    }
    return null;
    },
  
  decoration: InputDecoration(labelText: 'Spécialité principale'),
  ),
    TextFormField(controller: passWord,
  validator:(String input){
  if (input.isEmpty){
  return 'Le mot de passe >4 caractères';
  }
  return null;
  },
  
  decoration: InputDecoration(labelText: ' Autre spécialités'),
  obscureText: true,
  ),
  SizedBox(height: 20),
     Text('Sexe',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,
  color:Colors.grey
  ),
  ),



Column(
      children: <Widget>[ButtonBar(
       
  alignment: MainAxisAlignment.center,
  children: <Widget>[
    Radio(
      value: 1,
      groupValue: selectedRadio,
      activeColor: Colors.green,
      onChanged: (val) {
        print("Radio $val");
        setSelectedRadio(val);
      },
    ),
    Radio(
      value: 2,
      groupValue: selectedRadio,
      activeColor: Colors.blue,
      onChanged: (val) {
        print("Radio $val");
        setSelectedRadio(val);
      },
    ),
  ],
)
      ],
  ),
  
  Container(
  padding: EdgeInsets.only(top:3,left: 3 ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: Colors.cyan[100],
 
    ),
    child: MaterialButton(
    minWidth: double.infinity,
    height: 50,
    onPressed: (){
     if(xfromkey.currentState.validate()){
        print("successful");
        return
     /* auth.createUserWithEmailAndPassword(email: email.text, password: passWord.text).then((value){
        Firestore.instance.collection("userData").document(value.user.uid).setData({
          "userName":userName.text,
          "email":value.user.email,
          "uid":value.user.uid,
          "role":userRole.text,
        });*/
      this.setState(() {
          
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Pagelogin()));
          });
     
       
     }
     },
    color: Color(0XFFfe4a49),
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  
  ),
  child: Text('Suivant',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,
  color:Colors.white 
  ),
  ),
  
  ),
      ),
      SizedBox(
    height: 05,
  ),
  
  Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children:<Widget> [
    Text("Vous avez déjà un compte!",style:TextStyle(fontSize: 13),),
    Text("Connecter",style: TextStyle(
      fontSize: 13,fontWeight: FontWeight.w600
    ),
    ),
  ],
  )
  ],
      
    ),
    
    
], 
  
),

),


],),
)

        ]
        ),
         
),
),);
}

}