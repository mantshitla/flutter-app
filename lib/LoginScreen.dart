import 'package:flutter/material.dart';
import 'package:flutter_project/menu.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color primaryColor = Colors.green;
  Color secondaryColor = Colors.greenAccent;

  IconData? get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 110, 0.0, 0.0),
                    child: const Text(
                      'Hello',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 175, 0.0, 0.0),
                    child: const Text(
                      'There',
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(220, 175, 0.0, 0.0),
                    child: const Text(
                      '.',
                      style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      icon: Icon(
                        icon,
                        color: Colors.green,
                      ),
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'password',
                      icon: Icon(
                        icon,
                        color: Colors.green,
                      ),
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.green,
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    alignment: const Alignment(1.0, 0.0),
                    padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                    child: const InkWell(
                      child: Text(
                        'Forgot password',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  MaterialButton(
                    elevation: 0,
                    height: 50,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const homeScreen()));
                    },
                    color: primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text('NEW USER'),
                      SizedBox(
                        width: 5.0,
                      ),
                      InkWell(
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
