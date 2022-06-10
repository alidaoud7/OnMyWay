import 'package:flutter/material.dart';
import 'package:login/Pages/Choose%20Location/Home.dart';
import 'package:login/services/auth.dart';

import 'Button2.dart';

class NewInputWrapper extends StatefulWidget {
  const NewInputWrapper({Key? key}) : super(key: key);

  @override
  _NewInputWrapperState createState() => _NewInputWrapperState();
}

class _NewInputWrapperState extends State<NewInputWrapper> {
  var _formKey = GlobalKey<FormState>();
  final AuthService _auth =AuthService();

  String error ='';
  String email ="";
  String password='';
  String fullname='';

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
      padding: EdgeInsets.only(
        left: 30.0,
        top: 10.0,
        right: 30.0,
        bottom: 30.0,
      ),
      child: Form(
        key:_formKey ,
        child: SafeArea(
          child: Column(
            children: [
              AppBar(

                backgroundColor: Colors.white,
                elevation: 0.0,
                iconTheme: IconThemeData(
                  color: Colors.deepOrange[600],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(width: 330,
                child:
                Text('Full Name:', style: TextStyle(fontSize: 20
                  , color: Colors.deepOrange[600],),
                  textAlign: TextAlign.left,

                ),),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 0),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      border: InputBorder.none,
                      hintText: 'Enter your Full Name',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),

                      ),
                      hintStyle: TextStyle(color :Colors.grey),
                      errorStyle: TextStyle(
                        fontSize: 16.0,),
                    ),
                    validator: (val) => val!.isEmpty ? 'Enter your fullname' : null,
                    onChanged: (val) {
                      setState(() {
                        fullname = val;
                      });

                    },
                    style: TextStyle(color : Colors.black,fontSize: 22),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                  Container(height: 1,color: Colors.grey,)
                ],),
              ),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 10,
              ),

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
                height: 20,
              ),

              Container(width: 330,
                child:
                Text('Password:', style: TextStyle(fontSize: 20
                  , color: Colors.deepOrange[600],),
                  textAlign: TextAlign.left,

                ),),
              SizedBox(
                height: 20,
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
                height: 30,
              ),
              Container(

                child:FlatButton(
                  shape: StadiumBorder(),
                  onPressed: () async {
                    if( _formKey.currentState!.validate()){
                      dynamic result = await _auth.registerWithEmailAndPassword(email, password);
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
                  child : Button2(),


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
