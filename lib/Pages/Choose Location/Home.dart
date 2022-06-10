cdimport 'package:flutter/material.dart';
import 'package:login/Pages/Categories/categories.dart';
import 'package:login/Pages/LoginPage/LoginPage.dart';
import 'package:login/Pages/Restaurants/Platecards.dart';
import 'package:login/models/map.dart';
import 'package:login/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'SelectCity.dart';
import 'SelectLocation.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepOrange[600],
        elevation: 0.0,
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
      backgroundColor: Colors.deepOrange[600],
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select Region : ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  fontFamily: 'Outfit'
              ),),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 20.0,
                  bottom: 10.0,
                  top: 10.0
              ),
              child: Container(
                child: Container(
                    alignment: Alignment.center,

                    child: SelectLocation()),

                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            ),
            Text("Select City : ",
              textAlign: TextAlign.end,

              style: TextStyle(
                fontFamily: 'Outfit',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 20.0,
                  bottom: 10.0,
                  top: 10.0
              ),
              child: Container(
                child: Container(
                    alignment: Alignment.topCenter,

                    child: SelectCity()),

                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            ),
            SizedBox(height: 30,),




            FlatButton(onPressed: (){
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) =>  Categories(),
                ),
              );
            },
              child: Container(
                height: 50,
                width: 200,
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Center(
                        child: Text("Next",style: TextStyle(
                            color: Colors.deepOrange[600],
                            fontSize: 30,

                            fontFamily: 'Outfit'
                        ))
                    ),
                    Icon(Icons.arrow_forward_sharp,
                      color: Colors.deepOrange[600],
                      size: 30.0,),
                  ],
                ),
              ),
            ),






          ],
        ),
      ),


    );
  }
}
