import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_screen_image.jpg",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              )
            )
          ],
        ),
      ),
    );
  }
}
