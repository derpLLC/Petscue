import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.5,
              margin: EdgeInsets.only(top: 100),
              child: Center(
                child: Text(
                  "Pet Shop",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, letterSpacing: 1.5),
                ),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.only(top: 10),
              child: Image(
                image: NetworkImage(
                  'https://image.freepik.com/free-vector/cute-mascots-pet-shop-icons_24877-51192.jpg',
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
                    child: Text('Login'),
                    color: Colors.blue.shade300,
                    height: 50,
                    minWidth: 100,
                  ),
                  MaterialButton(
                    onPressed: () => {print("Button pressed")},
                    child: Text('Signup'),
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
