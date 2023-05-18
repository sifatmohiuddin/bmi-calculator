import 'package:flutter/material.dart';
import 'package:bmi_calculator/main.dart';


class reusable extends StatelessWidget {

  reusable({@required this.color, this.cardChild, this.onPress});

  final   color;
  final  cardChild;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(15),
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)

        ),
      ),
    );
  }
}