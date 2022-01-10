import 'package:flutter/material.dart';
import 'package:untitled/pages/loginpage.dart';
import 'package:untitled/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/homepage.dart';
import 'package:untitled/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),

      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: myroutes.homepage ,
      routes: {
        "/": (context) => loginpage(),
        myroutes.homepage: (context) => homepage(),
        myroutes.loginpage: (context) => loginpage(),
      },
    );
  }
}
