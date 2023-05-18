import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'Reusalbe.dart';
import 'rredbutton.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required
    this.bmiresult,@required this.liness, @required this.resultext
});

  final bmiresult;
  final resultext;
  final liness;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0XFF1D1E33),
        title: Text('BMI CALCULATOR'),
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child:
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Your Result',
            style: ktitle,),
          ),
          ),
          Expanded(flex: 5,
          child: reusable(
            color: kActiveCardcolor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(resultext.toUpperCase(),
                style: kgreenresult,),
                Text(bmiresult,
                style: bmiresu,),
                Text(liness,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20

                  ),

                )


              ],
            ),
          )
          ),
          redbutton(
            buttontitle: 'Re-calculate',
            onTap: (){
              Navigator.pop(context);
            },
          )

        ],

      )


    );
  }
}
