import 'package:flutter/material.dart';

import 'homescreen.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      ),
                    },
                    child: Text(
                      'Skip',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, letterSpacing: 1.5),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.blue.shade300,
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "Pet Shop",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, letterSpacing: 1.5),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.only(top: 10),
              child: Image(
                image: AssetImage(
                  'assets/images/login_screen_image.jpg',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () => {print("Button pressed")},
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, letterSpacing: 1.5),
                    ),
                    color: Colors.blue.shade300,
                    height: 50,
                    minWidth: 100,
                  ),
                  MaterialButton(
                    onPressed: () => {print("Button pressed")},
                    child: Text(
                      'Signup',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, letterSpacing: 1.5),
                    ),
                    color: Colors.blue.shade300,
                    height: 50,
                    minWidth: 100,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
