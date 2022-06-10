import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/frech%20tacos/Extra.dart';
import 'package:login/frech%20tacos/les%20viandes.dart';
import 'package:login/frech%20tacos/sauces.dart';

class menutacos extends StatelessWidget {
  const menutacos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Les Categories',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white70
          ),
        ),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 50, 30),
          child: Column(
            children: [
              SizedBox(height: 19,),
               Text(' Composez votre Tacos en 3 étapes         ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => V()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/viande.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Les viandes',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 42,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 6,),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => S()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/sauce.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Les sauces',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 42,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 6,),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Ex()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/frite.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Les extras',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 42,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}
