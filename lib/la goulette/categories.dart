import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/la%20goulette/Entree_chauds.dart';
import 'package:login/la%20goulette/pizza.dart';
import 'package:login/la%20goulette/plat_principale.dart';
import 'package:login/la%20goulette/poissons.dart';
import 'package:login/la%20goulette/salades.dart';
import 'package:login/la%20goulette/volatiles.dart';

class categoriess extends StatelessWidget {
  const categoriess({Key? key}) : super(key: key);

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
              SizedBox(height: 6,),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => volatille()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/viande.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Les volatilles',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 28,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EC()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/soupe.png'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Entrées chaudes',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 28,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => salade()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/salade.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Les salades',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 28,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => poisson()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/poi.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Les poissons',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 28,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => pizza()));
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
                            fontSize: 28,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PP()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/om.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Plat principale',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 28,
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
