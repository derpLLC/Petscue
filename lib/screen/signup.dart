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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 36),
          child: Column(
            children: [
              Image.asset(
                "assets/images/signup.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter the username',
                  labelText: 'Username',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter the password',
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () async {
                  await Future.delayed(Duration(seconds: 1));
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
      ),
    );
  }
}
