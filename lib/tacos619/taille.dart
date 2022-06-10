import 'package:flutter/material.dart';

class t extends StatelessWidget {
  const t({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Les Tailles',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white70,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets1/images/tacoos.jpg"),
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
              SizedBox(height: 50),
              Text('M                                         6dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('1 tortillas , 1 viandes',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 20,),
              Text('L                                         10dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('2 tortillas , 2 viandes',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 20,),
              Text('XL                                      16dt' ,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),Text('3 tortillas , 3 viandes',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
