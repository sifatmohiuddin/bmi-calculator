import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constant.dart';
class iconText extends StatelessWidget {
  iconText({this.icon: FontAwesomeIcons.f, this.label: 'gg'});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.00,
          color: Colors.white,
        ),
        SizedBox(
            height: 15),
        Text(label,
          style: kLabelSTyle)
      ],
    );
  }
}