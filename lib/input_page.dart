import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'calculator_brain.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 120;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text('Title'),
            ),
            body: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: new ReusableCard(
                                    backgroundColor: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                                    cardChild:new IconContent(
                                        icon: FontAwesomeIcons.mars,
                                        title: 'MALE'
                                    ),
                                    onTap: (){
                                      setState(() {
                                        selectedGender = Gender.male;
                                      });
                                    },
                                ),
                              ),
                              Expanded(
                                child: new ReusableCard(
                                    backgroundColor: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                                    cardChild:new IconContent(
                                      icon: FontAwesomeIcons.venus,
                                      title: 'FEMALE'
                                    ),
                                    onTap: (){
                                      setState(() {
                                        selectedGender = Gender.female;
                                      });
                                    },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: new ReusableCard(
                            backgroundColor: kActiveCardColor,
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'HEIGHT',
                                  style: kLabelStyle,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: <Widget>[
                                    Text(
                                      '$height',
                                      style: kNumberStyle,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'cm',
                                      style: kLabelStyle,
                                    ),
                                  ],
                                ),
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    thumbShape: RoundSliderThumbShape(
                                        enabledThumbRadius: 15,
                                    ),
                                    overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 30,
                                    ),
                                    thumbColor: kSliderThumbColor,
                                    overlayColor: kSliderOverlayThumbColor,
                                    activeTrackColor: kActiveSliderColor,
                                    inactiveTrackColor: kInactiveSliderColor,
                                  ),
                                  child: Slider(
                                    value: height.toDouble(),
                                    min: 120.0,
                                    max: 220.0,
                                    onChanged: (double newValue){
                                    setState(() {
                                      height = newValue.round();
                                    });
                                  },),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: new ReusableCard(
                                    backgroundColor: kActiveCardColor,
                                        cardChild: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'WEIGHT',
                                              style: kLabelStyle,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.baseline,
                                              textBaseline: TextBaseline.alphabetic,
                                              children: <Widget>[
                                                Text(
                                                  weight.toString(),
                                                  style: kNumberStyle,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Kg',
                                                  style: kLabelStyle,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                RoundIconButton(
                                                  icon: FontAwesomeIcons.minus,
                                                  onPressed: (){
                                                    setState(() {
                                                      weight--;
                                                    });
                                                  },
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                RoundIconButton(
                                                  icon: FontAwesomeIcons.plus,
                                                  onPressed: (){
                                                    setState(() {
                                                      weight++;
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                ),
                              ),
                              Expanded(
                                child: new ReusableCard(
                                  backgroundColor: kActiveCardColor,
                                  cardChild: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'AGE',
                                        style: kLabelStyle,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.baseline,
                                        textBaseline: TextBaseline.alphabetic,
                                        children: <Widget>[
                                          Text(
                                            age.toString(),
                                            style: kNumberStyle,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Years',
                                            style: kLabelStyle,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          RoundIconButton(
                                            icon: FontAwesomeIcons.minus,
                                            onPressed: (){
                                              setState(() {
                                                age--;
                                              });
                                            },
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          RoundIconButton(
                                            icon: FontAwesomeIcons.plus,
                                            onPressed: (){
                                              setState(() {
                                                age++;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        BottomButton(
                          title: 'CALCULATE',
                          onTap: (){
                            CalculatorBrain brain = CalculatorBrain(height: height, weight: weight);
                            ResultPage page = ResultPage(
                              result: brain.calculatorBMI(),
                              resultTitle: brain.getResult(),
                              resultMessage: brain.getInterpretation(),
                            );
                            Navigator.push(context, MaterialPageRoute(builder: (context) => page));
                          },
                        ),
                    ],
                  ),
            );
  }
}