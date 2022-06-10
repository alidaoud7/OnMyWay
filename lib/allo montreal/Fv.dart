import 'package:flutter/material.dart';

import 'menu_am.dart';

class am extends StatefulWidget {
  @override
  State<am> createState() => _LoginPageState();
}

class _LoginPageState extends State<am> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Allo Montreal',
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
                backgroundImage: const AssetImage('assets1/images/sandwiches.jpg'),
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
                  SizedBox(width: 15,),
                  Flexible(
                    child: Text(
                      '  شارع الزعيم ياسر عرفات بحي، Sousse',
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
                    Icons.phone,
                    color: Colors.deepOrange
                ),
                Text(
                  '  73369283',
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
                    'Ouvert de 11:00 AM à 2:00 AM ',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ) ,
                  ),
                ),],
              ),
              // SizedBox(height: 25,),
              // Row(children: const [
              //   SizedBox(width: 15,),
              //   Icon(
              //       Icons.facebook,
              //       color: Colors.orange
              //   ),
              // Text(
              //   '  https://www.facebook.com/Planet-food ',
              //   style: TextStyle(
              //       letterSpacing: 2.0,
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold
              //   ) ,
              // ),],
              // ),
              SizedBox(height: 25,),
              Row(children: const [
                SizedBox(width: 15,),
                Icon(
                    Icons.check,
                    color: Colors.deepOrange
                ),
                Text(
                  '  Livraison à domicile',
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
                    Icons.euro,
                    color: Colors.deepOrange
                ),
                Text(
                  '  Moyenne',
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => menuam()));
        },
        child: Text('MENU'),
        backgroundColor: Colors.deepOrange,

      ),
      backgroundColor: Colors.white,
    );
  }
}
