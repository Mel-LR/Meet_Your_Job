import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tinder_clone/components/already_have_an_account_acheck.dart';
import 'package:tinder_clone/components/rounded_button.dart';
import 'package:tinder_clone/components/rounded_input_field.dart';
import 'package:tinder_clone/components/rounded_password_field.dart';
import 'package:tinder_clone/components/text_field_container.dart';
import 'package:tinder_clone/constants.dart';
import 'package:tinder_clone/pages/root_app.dart';
import 'package:tinder_clone/screens/login/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Connexion",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/images/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Se connecter",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RootPage();
                  },
                ),
              );
            },
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            press: () {},
          )
        ],
      ),
    );
  }
}
