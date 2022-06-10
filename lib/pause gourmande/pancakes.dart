import 'package:flutter/material.dart';

class pancake extends StatelessWidget {
  const pancake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Pancakes',
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
                    image: AssetImage("assets1/images/pancake.jpg"),
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
              SizedBox(height: 35),
              Text('Snickers                                                      8,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 15,),
              Text('Mars                                                            8,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 15,),
              Text('M&M"s                                                         8,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 15,),
              Text('Duo                                                                  9dt',
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
              Text('PG                                                              11,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Nutella fruits de saison, fruits secs, boule de glace',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
