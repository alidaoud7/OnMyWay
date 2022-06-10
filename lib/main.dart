import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/services/auth.dart';


import 'package:provider/provider.dart';


import 'Pages/Choose Location/Home.dart';
import 'Pages/Splashscreen/SplashScreen.dart';





void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();





  runApp(MaterialApp(


      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>  SplashScreenPage(),
        '/home': (context) => Home(),

      }
));}

