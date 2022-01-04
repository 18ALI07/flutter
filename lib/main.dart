import 'package:flutter/material.dart';
import 'package:untitled/pages/homepage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:homepage(),
      themeMode: ThemeMode.dark,
      theme:ThemeData(
        primarySwatch: Colors.deepPurple
      ),
        darkTheme: ThemeData(
       brightness:Brightness.dark

      ),

    );
  }
}
