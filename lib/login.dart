import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class Pagelogin extends StatefulWidget {
  @override
  _Pagelogin createState() => new _Pagelogin();
}

class _Pagelogin extends State<Pagelogin> {
  // This widget is the root of your application.
  TextEditingController email = new TextEditingController();
  TextEditingController passWord = new TextEditingController();
  //final auth = FirebaseAuth.instance;
  final GlobalKey<FormState> fromkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var materialButton2 = MaterialButton(
      minWidth: double.infinity,
      height: 50,
      onPressed: () {},
    /*if (fromkey.currentState.validate()) {
           print("successful");
         return auth
             .signInWithEmailAndPassword(
                 email: email.text,
                  password: passWord.text)
              .then((result) async {
            if (result != null) {
      QuerySnapshot userInfoSnapshot =
      await DatabaseMethods().getUserInfo(email.text);
      await DatabaseMethods().getUserInfo(email.text);

      HelperFunctions.saveUserLoggedInSharedPreference(true);
      HelperFunctions.saveUserNameSharedPreference(
       userInfoSnapshot.documents[0].data["userName"]);
      HelperFunctions.saveUserEmailSharedPreference(
       userInfoSnapshot.documents[0].data["email"]);
        UserHelper().authorizeAcess(context);
           }
          });
    },*/
       
      color: Color(0XFF006064),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        'Connecter',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
      ),
  //},
  );
    var materialButton = materialButton2;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Form(
        key: fromkey,
        child: ListView(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Connecter',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Connectez-vous à votre compte',
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                             controller: email,
                             keyboardType: TextInputType.text,
                             validator: (String input) {
                                 if (input.isEmpty) {
                                   return 'Enter votre email';
                                 }
                                if (!RegExp(
                                         "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            
                                   .hasMatch(input)) {
                                   return 'Enter votre email';
                                 }
                                 return null;
                               },
                              decoration: InputDecoration(labelText: 'Email'),
                               obscureText: true,
                             ),
                            TextFormField(
                               controller: passWord,
                              validator: (input) {
                                 if (input.isEmpty) {
                                   //return 'Le mot de passe doit >4 caractères';
                                 }
                                return null;
                               },
                               decoration:
                                   InputDecoration(labelText: 'Mot de passe'),
                               obscureText: true,
                             ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          padding: EdgeInsets.only(top: 4.5, left: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0XFFFE4A49),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: materialButton,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Tu n'as pas de compte? ",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            "Inscrire",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 70),
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/photo1.jpg"),
                              fit: BoxFit.fitHeight),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}