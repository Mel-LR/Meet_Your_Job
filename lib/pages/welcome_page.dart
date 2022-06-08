import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/login_page.dart';

import '../theme/colors.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 60,
              horizontal: 30,
            ),
            child: Column(
              children: [
                Image.asset('assets/images/students/logo.jpeg'),
                Text(
                  "On a hâte de te rencontrer !",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: black.withOpacity(0.5)),
                ),
                SizedBox(height: 100),
                ElevatedButton(
                  child: Text('Connecte-toi'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
