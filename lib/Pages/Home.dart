import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   final int days = 30;
   final String name = "Ravi";
   final double pi = 7.14;
   final bool isMale = true;
   final num temp = 30.5;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Material(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                  'Welcome to $days days $temp of flutter $name gender is $isMale and num is $num pi value is $pi '), //string interpolation $name
            ),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}