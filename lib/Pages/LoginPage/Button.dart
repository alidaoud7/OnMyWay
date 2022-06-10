import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

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
        child: Text("Sign in",style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ))
      ),
    );
  }
}
