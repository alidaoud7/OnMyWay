import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/allo%20montreal/Bf.dart';
import 'package:login/allo%20montreal/burger.dart';
import 'package:login/allo%20montreal/libanais.dart';
import 'package:login/allo%20montreal/pizza.dart';
import 'package:login/allo%20montreal/sandwitchs.dart';

import 'makloub.dart';



class menuam extends StatelessWidget {
  const menuam({Key? key}) : super(key: key);

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
              // SizedBox(height: 19,),
              // Text(' Composez votre Tacos en 3 étapes         ',
              //   style: TextStyle(
              //       fontSize: 22,
              //       color: Colors.blueGrey,
              //       fontWeight: FontWeight.bold
              //   ),
              // ),
              SizedBox(height: 20,),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => pizzaam()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/images.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Pizza',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 25,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => bf()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/bf.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Baguettes farcies',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 25,
                            letterSpacing: 1.6,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => mak()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/mak.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Makloub',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 25,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => l()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/lib.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Cornet & Libanais',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 25,
                            letterSpacing: 1.5,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => burg()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/burg.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Burgers',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 25,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => sa()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/sandwiches.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text(''
                            'Sandwiches',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 25,
                            letterSpacing: 1.5,
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
