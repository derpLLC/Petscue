import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 36),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/login_screen_image.jpg",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter the username',
                          labelText: 'Username'),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter the password',
                          labelText: 'Password'),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
