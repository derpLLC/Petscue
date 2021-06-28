import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/screen/signup.dart';
import 'package:petshop/utils/fire_auth.dart';
import 'package:provider/provider.dart';

import 'screen/homescreen.dart';
import 'screen/login.dart';
import 'utils/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FireAuth>(
          create: (_) => FireAuth(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<FireAuth>().authStateChanges,
          initialData: null,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          primarySwatch: Colors.pink,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => FireAuthWrapper(),
          MyRoutes.homeRoute: (context) => HomeScreen(),
          MyRoutes.loginRoute: (context) => Login(),
          MyRoutes.signUpRoute: (context) => SignUp(),
        },
      ),
    );
  }
}

class FireAuthWrapper extends StatelessWidget {
  const FireAuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return HomeScreen();
    }

    return Login();
  }
}
