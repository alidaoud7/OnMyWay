import 'package:flutter/material.dart';

class crep extends StatelessWidget {
  const crep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Crepes Sucrées',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white70,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [ Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets1/images/cs.jpg"),
                    fit: BoxFit.cover,
                  )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
              SizedBox(height: 30),
              Text('Nutella                                                         7,2dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 10,),
              Text('Nutella-Banane                                          7,9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 10,),

              Text('Nutella-Amandes                                      8,6dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 10,),
              Text('Mars / Snickers                                         8,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 10,),
              Text('Duo                                                                 9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Nutella, Spéculoos',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 10,),
              Text('Oreo                                                             8,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 10,),

              Text('Crepe PG                                                  11,4dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Nutella, fruits de saisaon, fruits secs, boule de glace',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
