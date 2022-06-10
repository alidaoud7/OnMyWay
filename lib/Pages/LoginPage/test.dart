import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notebook/palatte.dart';
import 'package:notebook/services/auth_services.dart';
import 'package:notebook/services/database1.dart';
//import 'package:notebook/services/auth_services.dart';
//import 'package:notebook/services/database1.dart';
import 'package:notebook/shared/helperfunction.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notebook/shared/loadingg.dart';
import 'package:notebook/widgets/FormVal.dart';
import 'package:notebook/widgets/Formsignup.dart';
import '../widgets/widgets.dart';
//import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}
class _MyLoginPageState extends State<LoginPage> {

  var selectedCurrency, selectedType;
  final GlobalKey<FormState> _formKeyValue = new GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String error ='';
  String valueText ='';
  TextEditingController _textFieldController = TextEditingController();
  late Map<String, dynamic> userMap;
  late Map<String, dynamic> userMapmap;

  Formsignup formsignup = new Formsignup();
  DatabaseMethods databaseMethods = new DatabaseMethods();


  String _sucribestatus = 'Yes';
  bool loading = false;
  FormVal formVal=new FormVal();
  Map _userObj ={};
  String codeDialog ='';
  late bool zetest;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  bool testtest = true;
  late bool existtest;



  Future<bool> fn() async {zetest =(await HelperFunctions.getUserLoggedInSharedPreference())!;
  return zetest;}




  @override
  Widget build(BuildContext context) {
    return loading ? Loadingg() :  Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Form(
              key : _formKeyValue,
              child :


              SafeArea(
                child: Column(
                  children: [

                    SizedBox(
                      height: 130
                      ,
                    ),


                    Container(width: 340,
                      child:
                      Text('Login', style: TextStyle(fontSize: 30
                        , color: Colors.black,),
                        textAlign: TextAlign.left,

                      ),),
                    SizedBox(
                      height: 20,
                    ),

                    Container(width: 330,
                      child:
                      Text('Email', style: TextStyle(fontSize: 20
                        , color: Colors.blueAccent,),
                        textAlign: TextAlign.left,

                      ),),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 0),

                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [

                              Container(

                                child: Column(children:[ TextFormField(

                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                    border: InputBorder.none,
                                    hintText: 'yourname@email.com',
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Icon(
                                        FontAwesomeIcons.envelope,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    ),
                                    hintStyle: TextStyle(color :Colors.black),
                                    errorStyle: TextStyle(
                                      fontSize: 16.0,),
                                  ),

                                  validator: (value) {
                                    if (value!.trim().isEmpty) {
                                      return 'Please enter your email address';
                                    }
                                    // Check if the entered email has the right format
                                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                      return 'Please enter a valid email address';
                                    }
                                    // Return null if the entered email is valid
                                    return null;
                                  },
                                  onChanged: (value) => formVal.email = value,
                                  onSaved: (value) => formVal.email = value!,


                                  style: TextStyle(color : Colors.black,fontSize: 22),
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,



                                ),
                                  Container(height: 1,color: Colors.black,)
                                ]
                                ),
                              ),



                              SizedBox(
                                height: 20,
                              ),
                              Container(width: 342,
                                child:
                                Text('Password', style: TextStyle(fontSize: 20
                                  , color: Colors.blueAccent,),
                                  textAlign: TextAlign.left,

                                ),),
                              Container(

                                child: Column(children:[ TextFormField(

                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                    border: InputBorder.none,
                                    hintText: '*******',
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Icon(
                                        FontAwesomeIcons.lock,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    ),
                                    hintStyle: TextStyle(color :Colors.black),

                                    errorStyle: TextStyle(
                                      fontSize: 16.0,),
                                  ),
                                  obscureText: true,
                                  validator: (value) {
                                    if (value!.trim().isEmpty) {
                                      return 'password is required';
                                    }
                                    if (value.trim().length < 😎 {
                                    return 'Password must be at least 8 characters in length';
                                    }
                                    // Return null if the entered password is valid
                                    return null;
                                    },
                                  onChanged: (value) => formVal.password = value,
                                  onSaved: (value) => formVal.password = value!,


                                  style: TextStyle(color : Colors.black,fontSize: 22),
                                  textInputAction: TextInputAction.done,


                                ),
                                  Container(height: 1,color: Colors.black,)
                                ]
                                ),
                              ),





                              TextButton(
                                  child: Text('Forgot your password?',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                        'Resetyourpassword2', arguments: '');
                                  }
                              ),

                            ],
                          ),
                          Column(
                            children: [

                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 18),
                                child:FlatButton( padding: EdgeInsets.symmetric(vertical:5 ,horizontal: 100),
                                  shape: StadiumBorder(),
                                  onPressed:() {_formSubmit();
                                  },
                                  child : Text( 'Login',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.w700
                                    ,),),
                                  color : Colors.blueAccent,

                                ),

                              ),
                              Container(
                                height: 20,
                                child :Text(
                                  error,
                                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                                ),

                              ),

                              Container(width:175,margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 7.0),
                                child: Center(child: Row(children: [
                                  Container(
                                    height: 1, color: Colors.black, width: 80,

                                  ),
                                  Container(child: Text('or',
                                      style: TextStyle(color: Colors.black)),),


                                  Container(
                                    height: 1, color: Colors.black, width: 80,

                                  ),
                                ]),),
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              SizedBox(
                                height: 6,
                              ),
                              Center(heightFactor: 1, widthFactor: 1,
                                child:
                                Container(width: 290,margin: new EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Row(
                                      children: [


                                        Container(
                                          width: 198,

                                          child: Text(
                                            ' Don\'t have an account?',
                                            style: TextStyle(color: Colors.black45,fontSize: 18,),textAlign: TextAlign.center,
                                          ),
                                        ),
                                        TextButton(
                                            child: Text('Singup',
                                              style: TextStyle(fontSize: 18,
                                                color: Colors.blueAccent,),textAlign: TextAlign.center,),
                                            onPressed: () async {
                                              //setState(() => loading = true);

                                              Navigator.of(context).pushNamed(
                                                  'Signup', arguments: '');
                                            }
                                        ),
                                        Container(
                                            width: 0,
                                            height:2


                                        ),

                                      ]),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  Future<void> _formSubmit() async {
    final FormState? formStateVal = _formKeyValue.currentState;
    if(formStateVal!.validate()){
      formStateVal.save();
      print('form is saved');
      dynamic result = await _auth.signInWithEmailAndPassword(formVal.email, formVal.password);
      print(result);
      if(result == null) {
        setState(() {
          error = 'Could not sign in with those credentials';

        });}


      else{


        Navigator.of(context).pushNamed(
            'home', arguments: '');
      }


    }
  }
}