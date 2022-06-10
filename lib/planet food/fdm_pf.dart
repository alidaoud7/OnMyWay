import 'package:flutter/material.dart';

class fdm extends StatelessWidget {
  const fdm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Fruit de Mer',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white70,
          ),
        ),
        centerTitle: true,
      ),
       body:
      // Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('assets/images/ha.webp'),
      //           fit: BoxFit.cover
      //     )
      //   ),
      //   child:
      SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [ Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets1/images/fdm.jpg"),
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
                Text('Clovisses et moule à l"ail                     14,9dt',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 20,),
                Text('Filet de poissons panés                       13,9dt',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 20,),
                Text('Filet de poissons grillés                       13,9dt',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 20,),
                Text('Filet de poissons grillés, sauces fruits de mer                                                                         14,5dt' ,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 20,),
                Text('Daurade grillée                                       14,9dt',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 20,),
                Text('Daurade grillés, sauces fruit de mer                                      15,9dt',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),

                SizedBox(height: 20,),
                Text('Loup grillé                                               14,9dt',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: 20,),
                Text('Loup grillé, sauces fruits de mer        15,9dt',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),

                SizedBox(height: 20,),
                Text('Plat fruits de mer à l"ail                         18,9dt',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),

                SizedBox(height: 20,),
                Text('Plat fruits de mer gratinés                   18,9dt',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),

                SizedBox(height: 20,),
                Text('Brochette au fruits de mer                   14,5dt',
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

