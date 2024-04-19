import 'package:flutter/material.dart';
import 'package:tutorial/Pages/Login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final int days = 30;
    final String name = "Ravi";
    final double pi = 7.14;
    final bool isMale = true;
    final num temp = 30.5;
    return Scaffold(
      appBar: AppBar(
        title: Text('Ravi flutter tutorial'),
      ),
      body: Column(
        children: [
          Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                    'Welcome to $days days $temp of flutter $name gender is $isMale and num is $num pi value is $pi '), //string interpolation $name
              ),
            ),
             ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
        ],
      ),
        
      drawer: Drawer(),
    );
  }
}
