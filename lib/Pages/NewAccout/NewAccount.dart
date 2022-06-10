import 'package:flutter/material.dart';
import 'package:login/Pages/NewAccout/NewInputWrapper.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/asset5.jpg"),
              fit: BoxFit.cover,
            )


        ),
        child: Form(

          child: Column(
            children: [
              SizedBox(height:50,),



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
                child: NewInputWrapper() ,
              )
            ],
          ),
        ),
      ),
    );
  }

}
