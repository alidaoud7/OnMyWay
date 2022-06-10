import 'package:flutter/material.dart';

class bubble extends StatelessWidget {
  const bubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Bubble Waffle',
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
                    image: AssetImage("assets1/images/bubble.jpg"),
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
              Text('Nutella m&m"s                                           9,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 10,),
              Text('Caramel / Snickers / Mars                       9,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 15,),
              Text('PG                                                              11,8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Nutella, Kinder, m&m"s, Oreo',
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
