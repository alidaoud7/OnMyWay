import 'package:flutter/material.dart';
import 'package:notebook/services/auth_services.dart';


class InputWrapper extends StatefulWidget {
  const InputWrapper({Key? key}) : super(key: key);

  @override
  State<InputWrapper> createState() => _InputWrapperState();
}

class _InputWrapperState extends State<InputWrapper> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  String password = "";
  String email ="";
  final AuthService _auth = AuthService();
  final GlobalKey<FormState> _formKeyValue = new GlobalKey<FormState>();
  String error = "";



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Form(
        key : _formKeyValue,
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
                  onChanged: (value) => email = value,
                  onSaved: (value) => email = value!,



                  style: TextStyle(color : Colors.grey,fontSize: 22),
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

              Container(width: 342,
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
                    hintText: '***',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),

                    ),
                    hintStyle: TextStyle(color :Colors.grey),

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
                  onChanged: (value) => password = value,
                  onSaved: (value) => password = value!,



                  style: TextStyle(color : Colors.grey,fontSize: 22),
                  textInputAction: TextInputAction.done,


                ),
                  Container(height: 1,color: Colors.grey,)
                ]
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child:TextButton(
                    child: Text('Login',
                      style: TextStyle(fontSize: 18,
                        color: Colors.blueAccent,),textAlign: TextAlign.center,),
                    onPressed: () async {
                      _formSubmit();


                    }
                ),



              ),




            ],),
        ),
      ),
    );
  }
  Future<void> _formSubmit() async {
    final FormState? formStateVal = _formKeyValue.currentState;
    if(formStateVal!.validate()){
      formStateVal.save();
      print('form is saved');
      dynamic result = await _auth.signInWithEmailAndPassword(email, password);
      print(result);
      if(result == null) {
        setState(() {
          error = 'Could not sign in with those credentials';

        });}


      else{


        //***************** ekteb code eli hachtek bih ki tenzel login lehne ***********************



      }


    }
  }

}
