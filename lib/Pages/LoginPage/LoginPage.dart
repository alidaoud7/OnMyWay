import 'package:flutter/material.dart';



import 'InputWrapper.dart';







class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
    body: Container(
    width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Loginasset.jpg"),
          fit: BoxFit.cover,
        )


),
    child: Form(

      child: Column(
        children: [
        SizedBox(height:200,),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            )
          ),
          child: InputWrapper() ,
        )
      ],
  ),
    ),
),
    );
  }

}
