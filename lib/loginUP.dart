
//import 'login.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class SignupPage extends StatefulWidget {
  _SignupPage createState()=>new _SignupPage();
}

class _SignupPage extends State<SignupPage>{
  
  TextEditingController userRole  = new TextEditingController(); 
  TextEditingController userName  = new TextEditingController(); 
  TextEditingController email  = new TextEditingController(); 
  TextEditingController passWord  = new TextEditingController();
  
  final GlobalKey<FormState> xfromkey =GlobalKey<FormState>();
  //final auth =FirebaseAuth.instance ;
  
  @override
  Widget build(BuildContext context){
return Scaffold(
resizeToAvoidBottomInset: true,
backgroundColor: Colors.white,
body: Form(
  key: xfromkey,
  child:ListView(
    children: [
      Container(   
          decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
          Color(0XFFFFCCBC).withOpacity(0.1),
         Color(0XFFFB8C00).withOpacity(0.7),
      ],
    
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
      )
    ),
      padding: EdgeInsets.symmetric(
        horizontal: 40
      ),
    height: MediaQuery.of(context).size.height,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children:<Widget> [
  Text("Inscrire",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
  
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
  
  decoration: InputDecoration(labelText: 'Nom'),
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
  
  decoration: InputDecoration(labelText: 'Email'),
  ),
    TextFormField(controller: passWord,
  validator:(String input){
  if (input.isEmpty){
  return 'Le mot de passe >4 caractères';
  }
  return null;
  },
  
  decoration: InputDecoration(labelText: 'Mot de passe'),
  obscureText: true,
  ),
  
  TextFormField(controller: userRole,
  validator:(String input){
  if (input.isEmpty){
  return 'choisie votre rôle "assistant ou patient"';
  }
  return null;
  },
  
  decoration: InputDecoration(labelText: 'Votre rôle'),
  
  ),
  
  ],
      ) , 
      Container(
  padding: EdgeInsets.only(top:3,left: 3 ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: Colors.cyan[100],
  border: Border(
    bottom: BorderSide(color: Colors.black),
    top: BorderSide(color: Colors.black),
    left: BorderSide(color: Colors.black),
    right: BorderSide(color: Colors.black),
  
  )
    ),
    child: MaterialButton(
    minWidth: double.infinity,
    height: 50,
    onPressed: (){
     /*if(xfromkey.currentState.validate()){
        print("successful");
        return
      auth.createUserWithEmailAndPassword(email: email.text, password: passWord.text).then((value){
        Firestore.instance.collection("userData").document(value.user.uid).setData({
          "userName":userName.text,
          "email":value.user.email,
          "uid":value.user.uid,
          "role":userRole.text,
        });
      this.setState(() {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Pagelogin()));
          });
      }); */
    // }
     },
    color: Color(0XFF006064),
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  
  ),
  child: Text('Inscrire',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,
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
    
    ),
 ], ),
),


);
}

}