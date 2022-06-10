import 'package:flutter/material.dart';


class Button1 extends StatefulWidget {
  const Button1({Key? key}) : super(key: key);

  @override
  _Button1State createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.deepOrange[600],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text("Sign up",style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ))
      ),
    );
  }
}
