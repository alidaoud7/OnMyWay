import 'package:flutter/material.dart';

class pizzaam extends StatelessWidget {
  const pizzaam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Pizzas',
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
                    image: AssetImage("assets1/images/pizza.jpg"),
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
              SizedBox(height: 15),
              Text('Marguerita                                                    7dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Sauce tomate, fromage, basilic, olives',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 10,),
              Text('Neptune                                                     8,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Sauce tomate, fromage, thon, basilic, olives',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 15,),
              Text('4 fromages                                                 10dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Sauce blanche, 4 choix de fromages, basilic, olives',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 10,),
              Text('Vegetariennes                                             8dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Sauce tomate, fromage, melange de légumes, olives, basilic',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 10,),
              Text('Peperoni                                                    8,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Sauce tomate, fromage, basilic, poivron, tomate, peperoni',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 10,),
              Text('Montrealais                                                12dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Sauce tomate, basilic, viande hachée, bacon, peperoni, mozerella, olives',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey
                ),),
              SizedBox(height: 10,),
              Text('Tunisienne                                                 8,5dt',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Text('Sauce tomate, mozerella, oeuf, poivrons, merguez, olives, basilic',
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
