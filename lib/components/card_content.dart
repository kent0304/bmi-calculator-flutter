import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';

class CardContent extends StatelessWidget {
  CardContent({this.icon, this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(icon, size: 80.0),
        SizedBox(height: 15.0),
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}
