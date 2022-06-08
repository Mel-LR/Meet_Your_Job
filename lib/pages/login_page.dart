import 'package:flutter/material.dart';

import '../theme/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Connecte-toi avec ton adresse e-mail", 
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: black.withOpacity(0.5)),),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 35),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(
                  horizontal: 125,
                  vertical: 13,
                ),
              ),
              child: Text(
                'ok',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: black.withOpacity(0.5),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
