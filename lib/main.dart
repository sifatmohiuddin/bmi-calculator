import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusalbe.dart';
import 'IconText.dart';
import 'constant.dart';
import 'resultPage.dart';
import 'rredbutton.dart';
import 'brain.dart';
enum GenderNumber { male, female, nul }

GenderNumber selectedgender = GenderNumber.nul;

int height = 180;

int weight = 60;
int age = 15;

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0XFF1D1E33),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: reusable(
                    onPress: () {
                      setState(() {
                        selectedgender = GenderNumber.male;
                      });
                    },
                    color: selectedgender == GenderNumber.male
                        ? kActiveCardcolor
                        : kInactiveCardcolor,
                    cardChild: iconText(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: reusable(
                    onPress: () {
                      setState(() {
                        selectedgender = GenderNumber.female;
                      });
                    },
                    color: selectedgender == GenderNumber.female
                        ? kActiveCardcolor
                        : kInactiveCardcolor,
                    cardChild: iconText(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusable(
              color: kActiveCardcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Height", style: kLabelSTyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNewlabel),
                      Text(
                        'cm',
                        style: kLabelSTyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTickMarkColor: Color(0xFF8d8e98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      max: 300,
                      min: 100,
                      activeColor: Color(0XFFEB1555),
                      inactiveColor: Color(0XFF8D8E98),
                      onChanged: (double NewValue) {
                        setState(() {
                          height = NewValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: reusable(
                    color: kActiveCardcolor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: kLabelSTyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNewlabel,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                elevation: 0.0,
                                constraints: BoxConstraints.tightFor(
                                    width: 56.0, height: 56.0),
                                shape: CircleBorder(),
                                fillColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                elevation: 0.0,
                                constraints: BoxConstraints.tightFor(
                                    width: 56.0, height: 56.0),
                                shape: CircleBorder(),
                                fillColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: reusable(
                    color: kActiveCardcolor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: kLabelSTyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNewlabel,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                elevation: 0.0,
                                constraints: BoxConstraints.tightFor(
                                    width: 56.0, height: 56.0),
                                shape: CircleBorder(),
                                fillColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                elevation: 0.0,
                                constraints: BoxConstraints.tightFor(
                                    width: 56.0, height: 56.0),
                                shape: CircleBorder(),
                                fillColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          redbutton(
            buttontitle: 'Calculate',
            onTap: (){
              Brain calc = Brain(
                height: height, weight: weight
              );

              var push = Navigator.push(
                context,
                MaterialPageRoute(builder: (context)
              => ResultPage(
                bmiresult: calc.calculatebmi(),
                resultext: calc.getresult(),
                liness: calc.lines(),
              ),
              ),
              );
            },
          )
        ],
      ),
    );
  }
}

