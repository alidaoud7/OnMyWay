import 'package:flutter/material.dart';
import 'package:login/Pages/LoginPage/LoginPage.dart';
import 'package:login/pause%20gourmande/firstview.dart';


class Dessertcards extends StatelessWidget {
  const Dessertcards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[600],
        actions:  [
          FlatButton.icon(
            onPressed:()  {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) =>  LoginPage(),
                ),
              );

            } ,
            icon: Icon (Icons.person,color: Colors.white,),
            label: Text('logout',
              style: TextStyle(
                color: Colors.white,
              ),),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset("assets/ps.jfif",fit: BoxFit.cover,),
                    ),
                    title: Text('Pause Gourmande',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
                    subtitle: Text('Av. Yesser Arafet'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('View informations',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => pg()));
                        },
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Add to favorites',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset("assets/s1.jpg",fit: BoxFit.cover,),
                    ),

                    title: Text('Mister Crepe',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
                    subtitle: Text('Av. Yesser Arafet'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('View informations',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Add to favorites',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset("assets/d3.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('Bistrot 73',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
                    subtitle: Text('Av. Yesser Arafet'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('View informations',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Add to favorites',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset("assets/d4.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('Tartella',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
                    subtitle: Text('Av. Yesser Arafet'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('View informations',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Add to favorites',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset("assets/d9.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('Nougatine',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
                    subtitle: Text('Av. Yesser Arafet'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('View informations',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Add to favorites',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 44,
                        minHeight: 44,
                        maxWidth: 44,
                        maxHeight: 44,
                      ),
                      child: Image.asset("assets/d6.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('Dar Al Kunafa',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
                    subtitle: Text('Av. Yesser Arafet'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('View informations',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Add to favorites',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

