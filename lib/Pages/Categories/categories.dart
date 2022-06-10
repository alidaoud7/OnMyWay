
import 'package:flutter/material.dart';
import 'package:login/Pages/LoginPage/LoginPage.dart';

import 'buttoncategories.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your Food'),
        centerTitle: true,
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
      body: Container(
        child:buttoncategories(),
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/back.png"),
              fit: BoxFit.cover,
            )


        ),
      ),
    );
  }
}
