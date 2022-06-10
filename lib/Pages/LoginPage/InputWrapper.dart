import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/Pages/Choose%20Location/Home.dart';
import 'package:login/Pages/NewAccout/NewAccount.dart';
import 'package:login/services/auth.dart';

import 'Button.dart';
import 'Button1.dart';


class InputWrapper extends StatefulWidget {
  const InputWrapper({Key? key}) : super(key: key);

  @override
  State<InputWrapper> createState() => _InputWrapperState();
}

class _InputWrapperState extends State<InputWrapper> {

  final AuthService _auth =AuthService();
  var _formKey = GlobalKey<FormState>();

  String error ='';
  String email ="";
  String password='';

  final GlobalKey<FormState> _formKeyValue = new GlobalKey<FormState>();

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    else{
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) =>  Home(),
        ),
      );
    }
    _formKey.currentState!.save();
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Form(
        key:_formKey ,
        child: SafeArea(
          child: Column(
            children: [
              Container(width: 330,
                child:
                Text('Email:', style: TextStyle(fontSize: 20
                  , color: Colors.deepOrange[600],),
                  textAlign: TextAlign.left,

                ),),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 0),

                child: Column(children:[ TextFormField(

                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    border: InputBorder.none,
                    hintText: 'yourname@email.com',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),

                    ),
                    hintStyle: TextStyle(color :Colors.grey),
                    errorStyle: TextStyle(
                      fontSize: 16.0,),
                  ),

                  validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });

                  },
                  style: TextStyle(color : Colors.black,fontSize: 22),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,



                ),
                  Container(height: 1,color: Colors.grey,)
                ]
                ),
              ),


              SizedBox(
                height: 10,
              ),

              Container(width: 330,
                child:
                Text('Password:', style: TextStyle(fontSize: 20
                  , color: Colors.deepOrange[600],),
                  textAlign: TextAlign.left,

                ),),
              SizedBox(
                height: 10,
              ),





              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 0),

                child: Column(children:[ TextFormField(

                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    border: InputBorder.none,
                    hintText: '*******',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),

                    ),
                    hintStyle: TextStyle(color :Colors.grey),

                    errorStyle: TextStyle(
                      fontSize: 16.0,),
                  ),
                  obscureText: true,
                  validator: (val) => val!.length < 6 ? 'Enter a password 6+ chars long' : null,
                  onChanged: (val) {
                    setState(() {
                    password = val;
                  });


                   },



                  style: TextStyle(color : Colors.black,fontSize: 22),
                  textInputAction: TextInputAction.done,


                ),
                  Container(height: 1,color: Colors.grey,)
                ]
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Container(

                child:FlatButton(
                  shape: StadiumBorder(),
                  onPressed: () async {
                    if( _formKey.currentState!.validate()){
                      dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                      if (result == null){
                        setState(() {
                          error='Could not sign in with those credentials';
                        });
                      }else {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      }
                    }
                  },
                  child : Button(),


                ),


              ),
              SizedBox(
                height: 10,
              ),
              Container(

                child:FlatButton(
                  shape: StadiumBorder(),
                  onPressed:() { Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => NewAccount(),
                    ),
                  );
                  },
                  child : Button1(),


                ),

              ),
              SizedBox(height: 12.0),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              )


            ],),
        ),
      ),
    );
  }



}


