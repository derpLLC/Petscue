import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petshop/utils/fire_auth.dart';
import 'package:petshop/utils/routes.dart';
import 'package:provider/provider.dart';

import '../themes.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool loginButton = false;
  bool signUpButton = false;
  bool skipButton = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _usernameError;
  String? _passwordError;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 36),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/login.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Welcome $name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        hintText: 'Enter the username',
                        labelText: 'Username',
                        errorText: _usernameError),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter the password',
                        labelText: 'Password',
                        errorText: _passwordError),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () async {
                          setState(() {
                            loginButton = true;
                          });
                          if (_emailController.text.isEmpty &&
                              _passwordController.text.isEmpty) {
                            setState(() {
                              _usernameError = 'Username cannot be empty.';
                              _passwordError = 'Password cannot be empty';
                            });
                          } else if (_emailController.text.isEmpty) {
                            setState(() {
                              _usernameError = 'Username cannot be empty.';
                            });
                          } else if (_passwordController.text.isEmpty) {
                            setState(() {
                              _passwordError = 'Password cannot be empty.';
                            });
                          } else {
                            setState(() {
                              _usernameError = '';
                              _passwordError = '';
                            });
                            context.read<FireAuth>().signIn(
                                  email: _emailController.text.trim(),
                                  password: _passwordController.text.trim(),
                                );
                            await Future.delayed((Duration(milliseconds: 500)));
                            await Navigator.pushNamed(
                                context, MyRoutes.homeRoute);
                            setState(() {
                              loginButton = false;
                            });
                          }
                          setState(() {
                            loginButton = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          alignment: Alignment.center,
                          height: 40.0,
                          width: loginButton ? 50 : 100,
                          child: loginButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.circular(loginButton ? 50 : 8.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            signUpButton = true;
                          });
                          await Future.delayed((Duration(milliseconds: 500)));
                          await Navigator.pushNamed(
                              context, MyRoutes.signUpRoute);
                          setState(() {
                            signUpButton = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          alignment: Alignment.center,
                          height: 40.0,
                          width: signUpButton ? 50 : 100,
                          child: signUpButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  'Signup',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(
                                  signUpButton ? 50 : 8.0)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () async {
                          setState(() {
                            skipButton = true;
                          });
                          await Future.delayed(Duration(milliseconds: 500));
                          await Navigator.pushNamed(
                              context, MyRoutes.homeRoute);
                          setState(() {
                            skipButton = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          alignment: Alignment.center,
                          height: 40.0,
                          width: skipButton ? 50 : 100,
                          child: skipButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  'Skip',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius:
                                  BorderRadius.circular(skipButton ? 50 : 8.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
