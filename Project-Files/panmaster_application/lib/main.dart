import 'package:flutter/material.dart';
import 'pages/loginPage.dart';

void main() {
  runApp(PanMasterApp());
}

class PanMasterApp extends StatelessWidget{
  String title = "PanMaster13's Application";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginPage(),
    );
  }
}




