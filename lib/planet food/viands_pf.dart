import 'package:flutter/material.dart';

class viandes extends StatelessWidget {
  const viandes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Viandes',
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
            children: [
               Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets1/images/viande.jpg"),
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
              Text('Plat merguez de veau                           11,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Steack hachée                                        12,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Foie grillé                                                11,9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Foie sauce champigon                         12,9dt' ,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Foie sauce oignon                                 12,9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Brochette mixte                                     12,9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 20,),
              Text('Steack grillé                                            12,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Steak sauce champignon                     13,9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 20,),
              Text('Steak sauce roquefort                          14,9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 20,),
              Text('Steak sauce balsamique                      13,9dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),

              SizedBox(height: 20,),
              Text('grillade mixte                                         14,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('grillade mixte avec sauce                    15,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 20,),
              Text('Trio veau, filet, poissons et escalopes                     15,5dt',
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
