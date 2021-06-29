import 'package:flutter/material.dart';
import 'package:petshop/utils/fire_auth.dart';
import 'package:petshop/utils/routes.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _usernameError;
  String? _passwordError;

  bool changeButton = false;

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
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter the username',
                  labelText: 'Username',
                  errorText: _usernameError,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter the password',
                  labelText: 'Password',
                  errorText: _passwordError,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
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
                    context.read<FireAuth>().signUp(
                        email: _emailController.text.trim(),
                        password: _passwordController.text.trim());

                    await Future.delayed(Duration(seconds: 1));
                    await Navigator.pushNamed(context, MyRoutes.loginRoute);
                    setState(() {
                      changeButton = false;
                    });
                  }
                  setState(() {
                    changeButton = false;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  alignment: Alignment.center,
                  height: 40.0,
                  width: changeButton ? 50 : 100.0,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          'Signup',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
