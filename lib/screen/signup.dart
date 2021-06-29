import 'package:flutter/material.dart';
import 'package:petshop/utils/routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/signup.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter the username',
                labelText: 'Username',
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter the password',
                labelText: 'Password',
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              child: Container(
                alignment: Alignment.center,
                height: 40.0,
                width: 100.0,
                child: Text(
                  'Signup',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
