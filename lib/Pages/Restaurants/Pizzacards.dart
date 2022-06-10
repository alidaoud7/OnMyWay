
import 'package:flutter/material.dart';
import 'package:login/Pages/LoginPage/LoginPage.dart';

class Pizzacards extends StatelessWidget {
  const Pizzacards({Key? key}) : super(key: key);

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
                      child: Image.asset("assets/res3.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('Il Forno',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
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
                      child: Image.asset("assets/pi1.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('Taxi Pizza',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
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
                      child: Image.asset("assets/asset1.jpg",fit: BoxFit.cover,),
                    ),
                    title: Text('Farm House Pizza',style: TextStyle(fontSize: 20.0,fontFamily: 'Outfit',fontWeight: FontWeight.bold),),
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

