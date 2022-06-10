import 'package:flutter/material.dart';
import 'package:login/Pages/LoginPage/LoginPage.dart';
import 'package:provider/provider.dart';


import 'Pages/Choose Location/Home.dart';
import 'models/user.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Userr>(context);
    print(user);

    // return either the Home or Authenticate widget
    if (user == null) {
      return LoginPage();

    }else {
      return Home();
    }

  }
}

