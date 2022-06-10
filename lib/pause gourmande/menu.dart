import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/pause%20gourmande/pancakes.dart';
import 'package:login/pause%20gourmande/smoothies.dart';
import 'package:login/pause%20gourmande/yaghourt%20glac%C3%A9e.dart';

import 'bubble.dart';
import 'cocktail.dart';
import 'crepe sucree.dart';
import 'frappocu=ino.dart';
import 'glace.dart';
import 'milkshake.dart';

class m extends StatelessWidget {
  const m({Key? key}) : super(key: key);

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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cocktail()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/cok.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Cocktails',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 32,
                              letterSpacing: 1.2,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => smoo()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/smoo.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Smoothies',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 32,
                              letterSpacing: 1.2,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => yaghourt()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/yg.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Yaourt glacé',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 32,
                              letterSpacing: 1.2,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => crep()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/cs.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Crepes sucrées',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 32,
                              letterSpacing: 1.2,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => glace()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/g.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Glace',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 32,
                              letterSpacing: 1.2,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => milkshake()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/mk.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Milkshake',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 32,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => pancake()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/pancake.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Pancakes',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 32,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => bubble()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/bubble.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Bubble Waffle',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 32,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => frap()));
                      },
                      child: Row(
                        children:
                        const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets1/images/frap.jpg'),
                            radius: 30,
                          ),
                          const SizedBox(width: 10,),
                          Text('Frappoccino',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 32,
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
