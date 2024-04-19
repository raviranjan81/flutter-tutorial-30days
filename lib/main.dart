import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial/Pages/Home.dart';
import 'package:tutorial/Pages/Login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //context: peace of information
    bringVegitable(
      isThala: true,
      rupees: 100,
    );
    return MaterialApp(
      // home: Home(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        primaryColor: Colors.deepPurple,
        brightness: Brightness.dark,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: '/login',
      routes: {
        "/": (context) => Login(),
        "/home": (context) => Home(),
        "/login": (context) => Login(),
        // "/contact": (context) => Contact(),
      },
    );
  }

  bringVegitable({@required isThala = false, int rupees = 100}) {
    return Text("Vegitable is $isThala and price is $rupees");
  }
}
