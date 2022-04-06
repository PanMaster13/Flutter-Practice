import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key, required this.data}) : super(key: key);

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
              "Username: " + data["username"] + " \nPassword: " + data["password"]
          ),
        )
    );
  }
}