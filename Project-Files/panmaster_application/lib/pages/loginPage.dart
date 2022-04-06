import 'package:flutter/material.dart';
import 'mainPage.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  Map<String, dynamic> data = {
    "username": "",
    "password": ""
  };
  final usernameTextCtrl = TextEditingController(), passwordTextCtrl = TextEditingController();

  void loginOnPress() {
    data["username"] = usernameTextCtrl.text;
    data["password"] = passwordTextCtrl.text;

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MainPage(data: data)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 30.0, right: 15.0, bottom: 10.0),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 150,
                      child: Image.asset('lib/images/gabriel.jpg'),
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0, bottom: 10.0),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        hintText: 'Enter username'
                    ),
                    controller: usernameTextCtrl
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0, bottom: 20.0),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter password'
                      ),
                      controller: passwordTextCtrl
                  )
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: TextButton(
                  onPressed: loginOnPress,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}