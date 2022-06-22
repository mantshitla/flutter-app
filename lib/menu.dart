import 'package:flutter/material.dart';
import 'package:flutter_project/navBar.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navBar(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home'),
      ),
    );
  }
}
