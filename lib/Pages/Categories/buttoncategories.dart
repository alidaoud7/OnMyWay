import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/Pages/Restaurants/Dessertcards.dart';
import 'package:login/Pages/Restaurants/Pizzacards.dart';
import 'package:login/Pages/Restaurants/Platecards.dart';
import 'package:flutter/services.dart';
import 'package:login/Pages/Restaurants/Sandwichscards.dart';
import 'package:login/Pages/Restaurants/Tunisiancards.dart';
class buttoncategories extends StatelessWidget {
  const buttoncategories ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          RaisedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Sandwichscards(),
                )
            );
          },
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            padding: EdgeInsets.only(
                top: 15.0, bottom: 15.0, right: 60.0, left: 15.0),
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children:[ClipOval(
                child: Image.asset(
                  'assets/sandwich.jpg',
                  height: 60.0,
                  width: 60.0,

                ),
              ),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: new Text(
                      "Sandwichs",
                      style: TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[900],
                      ),
                    ))
              ],


            ),
          ),


          RaisedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Platecards()
                )
            );
          },
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            padding: EdgeInsets.only(
                top: 15.0, bottom: 15.0, right: 60.0, left: 15.0),
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children:[ClipOval(
                child: Image.asset(
                  'assets/salad.jpg',
                  height: 60.0,
                  width: 60.0,

                ),
              ),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: new Text(
                      "Plate",
                      style: TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[900],
                      ),
                    ))
              ],


            ),
          ),
          RaisedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Dessertcards(),
                )
            );
          },
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            padding: EdgeInsets.only(
                top: 15.0, bottom: 15.0, right: 60.0, left: 15.0),
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children:[ClipOval(
                child: Image.asset(
                  'assets/dessert.jpg',
                  height: 60.0,
                  width: 60.0,

                ),
              ),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: new Text(
                      "Dessert",
                      style: TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[900],
                      ),
                    ))
              ],


            ),
          ),
          RaisedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Pizzacards(),
                )
            );
          },
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            padding: EdgeInsets.only(
                top: 15.0, bottom: 15.0, right: 60.0, left: 15.0),
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children:[ClipOval(
                child: Image.asset(
                  'assets/107152_w1024h1024c1cx176cy267cxb353cyb535.jpg',
                  height: 60.0,
                  width: 60.0,

                ),
              ),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: new Text(
                      "Pizza",
                      style: TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[900],
                      ),
                    ))
              ],


            ),
          ),


          RaisedButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Tunisiancards(),
                )
            );
          },
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            padding: EdgeInsets.only(
                top: 15.0, bottom: 15.0, right: 60.0, left: 15.0),
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children:[ClipOval(
                child: Image.asset(
                  'assets/t.jpeg',
                  height: 60.0,
                  width: 60.0,

                ),
              ),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: new Text(
                      "Tunisian",
                      style: TextStyle(
                        fontSize: 25.0, fontWeight: FontWeight.bold,
                        color: Colors.deepOrange[900],
                      ),
                    ))
              ],


            ),
          ),
        ],



      ),
    );
  }
}