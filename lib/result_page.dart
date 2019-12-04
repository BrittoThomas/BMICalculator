import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required  this.result, @required this.resultTitle, @required this.resultMessage});

  String resultTitle;
  String result;
  String resultMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              child: Text('Your Result',
              style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              backgroundColor: kActiveCardColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(resultTitle,
                      style: kResultTitleStyle,
                    ),
                    Text(
                      result,
                      style: kResultValueStyle,
                    ),
                    Text(
                      resultMessage,
                      textAlign: TextAlign.center,
                      style: kResultMessageStyle,
                    )
                  ],
                ),
              ),
            ),
          ),

          BottomButton(
            title: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}
