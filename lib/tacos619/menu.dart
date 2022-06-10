import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login/tacos619/extra.dart';
import 'package:login/tacos619/sauce.dart';
import 'package:login/tacos619/taille.dart';
import 'package:login/tacos619/viande.dart';

class menut extends StatelessWidget {
  const menut({Key? key}) : super(key: key);

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
              Text(' Composez votre Tacos en 4 étapes    ',
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => t()));
                    },
                    child: Row(
                      children:
                      const [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets1/images/tacoos.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(width: 10,),
                        Text('Les tailles',
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
              SizedBox(height: 6,),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Vd()));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Sa()));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Ext()));
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
