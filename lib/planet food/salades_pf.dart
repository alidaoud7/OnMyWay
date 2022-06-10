import 'package:flutter/material.dart';

class salades extends StatelessWidget {
  const salades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Salades',
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
                  image: AssetImage("assets1/images/salade.jpg"),
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
              Text('Salade tomate mozzarella                     6,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Salade de tomate                                     5,9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Salade Tunisienne                                   6,9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Salade mechouia                                      6,9dt' ,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Salade laitue                                             6,4dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Salade mexicaine                                     7,4dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 20,),
              Text('Salade mixte                                             7,4dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Salade césar                                             8,4dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 20,),
              Text('Salade de fruits de mer                        11,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 20,),
              Text('Planet food                                             11,9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 20,),
              Text('Salade Russe                                            6,9dt',
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
