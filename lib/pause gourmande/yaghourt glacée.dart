import 'package:flutter/material.dart';

class yaghourt extends StatelessWidget {
  const yaghourt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Yaourt Glacé',
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
                    image: AssetImage("assets1/images/yg.jpg"),
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
              Text('Yougi Strawbery                                        6,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('fraise',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 10,),
              Text('Yougi fruit Exotic                                       7,2dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('ananas, framboise, mangue, kiwi ',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 15,),
              Text('Yougi nutella-banane                               7,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 10,),
              Text('Jwejem PG                                                 9,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
