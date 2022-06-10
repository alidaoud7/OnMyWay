import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/planet%20food/kids_pf.dart';
import 'package:login/planet%20food/pasta_pf.dart';
import 'package:login/planet%20food/pizza_pf.dart';
import 'package:login/planet%20food/repas_de_chef_pf.dart';
import 'package:login/planet%20food/salades_pf.dart';
import 'package:login/planet%20food/viands_pf.dart';

import 'fdm_pf.dart';

class categories extends StatelessWidget {
  const categories({Key? key}) : super(key: key);

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
      Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 50, 30),
            child: Column(
              children: [
                 SizedBox(height: 6,),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => pizza_pf()));
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
                              fontSize: 30,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => fdm()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/fdm.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Fruit de Mer',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => salades()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/salade.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Salades',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => pasta()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/pasta.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Pasta',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => viandes()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/viande.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Viandes',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Rdc()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/chef.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Repas du Chef',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Kids()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/om.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Omlettes',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 30,
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
      ),

    backgroundColor: Colors.white,
    );
}
}
