import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screen/login.dart';
import 'screen/homescreen.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.loginRoute: (context) => Login(),
      },
    );
  }
}
