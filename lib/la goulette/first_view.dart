import 'package:flutter/material.dart';

import 'categories.dart';
class lagoulette extends StatefulWidget {
  @override
  State<lagoulette> createState() => _LoginPageState();
}

class _LoginPageState extends State<lagoulette> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'La Gargoulette',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white70,
                fontWeight: FontWeight.bold
            )
        ),
        actions: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.favorite,
              color: Colors.pink,),
            backgroundColor: Colors.deepOrange,
            elevation: 0,
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body:
      SingleChildScrollView(
        child: Column(
            children:
            [const SizedBox(height: 30,) ,
              CircleAvatar(
                backgroundImage: const AssetImage('assets1/images/pf.jpg'),
                radius: 120,

              ),
              // Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //     image: AssetImage("assets/images/assets1.jpg"),
              //     fit: BoxFit.cover,
              //   )
              //   ),
              //   child: Column(
              //     children: [
              //       SizedBox(
              //         height: 200,
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(height:25),
              Row(

                children: const [
                  SizedBox(width: 15,),
                  Icon(Icons.map,
                      color: Colors.deepOrange),
                  Text(
                    '  Sahloul, Sousse',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ) ,
                  ),],
              ),
              SizedBox(height: 25,),
              Row(children: const [
                SizedBox(width: 15,),
                Icon(
                    Icons.alarm,
                    color: Colors.deepOrange
                ),
                SizedBox(width: 15,),
                Flexible(
                  child: Text(
                    'Ouvert de 11:00 AM à 11:00 PM ',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ) ,
                  ),
                ),],
              ),
              SizedBox(height: 25,),
              Row(children: const [
                SizedBox(width: 15,),
                Icon(
                    Icons.euro,
                    color: Colors.deepOrange
                ),
                Text(
                  '  élevée',
                  style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ) ,
                ),],
              ),
            ]),
      ),


      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => categoriess()));
        },
        child: Text('MENU'),
        backgroundColor: Colors.deepOrange,

      ),
      backgroundColor: Colors.white,
    );
  }
}
