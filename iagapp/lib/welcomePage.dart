import 'package:flutter/material.dart';
import 'package:iagapp/constants/theme.dart';

import 'components/rounded_button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: double.infinity,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to IAG',
                style: TextStyle(
                  color: Theme.of(context).textTheme.headline2!.color,
                  fontSize: Theme.of(context).textTheme.headline2!.fontSize,
                ),
              ),
              SizedBox(
                height: size.height * 0.17,
              ),
              Image.asset(
                'assets/images/ae86.png',
                height: size.height * 0.2,
              ),
              SizedBox(
                height: size.height * 0.17,
              ),
              RoundedButton(
                text: 'Log In',
                press: () {},
                color: Theme.of(context).textButtonTheme.style!.backgroundColor,
              ),
              RoundedButton(
                text: 'Sign Up',
                press: () {},
                color: Theme.of(context).textButtonTheme.style!.backgroundColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
