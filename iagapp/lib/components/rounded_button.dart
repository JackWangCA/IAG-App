import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final MaterialStateProperty<Color?>? color;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: size.width * 0.65,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: TextButton(
          onPressed: () {
            press;
          },
          style: ButtonStyle(
            padding: Theme.of(context).textButtonTheme.style!.padding,
            backgroundColor: color,
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
