import 'package:flutter/material.dart';
import 'constant.dart';
import 'Reusalbe.dart';
import 'main.dart';

class redbutton extends StatelessWidget {
  redbutton({this.buttontitle = 'fdf', this.onTap: 'h'});

  final  onTap;
  final String buttontitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        padding: EdgeInsets.only(top: 10.0),
        child:
        Center(

          child: Text(buttontitle,
            style: TextStyle(

                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white
            ),),
        ),
        color: kBottomcolor,
        height: kBottomcontainerheight,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10),
      ),
    );
  }
}