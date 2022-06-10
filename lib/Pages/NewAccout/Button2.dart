import 'package:flutter/material.dart';


class Button2 extends StatefulWidget {
  const Button2({Key? key}) : super(key: key);

  @override
  _Button2State createState() => _Button2State();
}

class _Button2State extends State<Button2> {
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
          child: Text("Submit",style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ))
      ),
    );
  }
}