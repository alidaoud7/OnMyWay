import 'package:flutter/material.dart';
import 'package:login/Pages/LoginPage/LoginPage.dart';
import 'package:login/allo%20montreal/Fv.dart';
import 'package:login/frech%20tacos/firstview_ft.dart';
import 'package:login/planet%20food/firstview.dart';
import 'package:login/tacos619/first.dart';


class Sandwichscards extends StatelessWidget {
  const Sandwichscards({Key? key}) : super(key: key);

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
                      child: Image.asset("assets/s11.png",fit: BoxFit.cover,),
                    ),
                    title: Text("Tacos'619",style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
                    subtitle: Text('Av. Yesser Arafet'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('View informations',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => fr()));
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
                      child: Image.asset("assets/s2.jpg",fit: BoxFit.cover,),
                    ),

                    title: Text('French Tacos',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
                    subtitle: Text('Av. Yesser Arafet'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('View informations',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => french()));
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
                      child: Image.asset("assets/s3.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('Allo Montréal',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
                    subtitle: Text('Av. Yesser Arafet'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('View informations',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => am()));
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
                      child: Image.asset("assets/res4.jpg",fit: BoxFit.cover,),
                    ),

                    title: Text('Planet Food',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
                    subtitle: Text('Av. Yesser Arafet'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('View informations',style: TextStyle(color: Colors.deepOrange),),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LloginPage()));

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
                      child: Image.asset("assets/s5.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('Chaneb',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
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
                      child: Image.asset("assets/s6.jpeg",fit: BoxFit.cover,),
                    ),
                    title: Text('Cocktail Food',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
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
                      child: Image.asset("assets/s4.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('Argos',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
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
                      child: Image.asset("assets/res5.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('PapaDam Pizza',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
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

