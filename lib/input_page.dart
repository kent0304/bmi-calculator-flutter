import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'reusable_card.dart';
import 'constants.dart';



enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child:  ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    baseColor: selectedGender == GenderType.male ? kActiveCardColor : kInactiveCardColor,
                    cardChild: CardContent(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE"
                    )
                  ),
                  ),

                Expanded(
                  child: ReusableCard(
                      onPress: (){
                        setState(() {
                        selectedGender = GenderType.female;
                      });
                      },
                      baseColor: selectedGender == GenderType.female ? kActiveCardColor : kInactiveCardColor,
                      cardChild: CardContent(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE"
                      )
                    ),

                ),
              ],)
              
              
            ),
            Expanded(
              child: ReusableCard(
                    baseColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "HEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Color(0xFF8D8E98),
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            thumbShape: 
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newValue){
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                            ),
                        ),
                      ]
                    ),
                  ),
            ),
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    baseColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              backgroundColor: Color(0xFF4C4F5F),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              backgroundColor: Color(0xFF4C4F5F),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        
                        
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    baseColor: kActiveCardColor,
                  ),
                ),
              ],)
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          
        ],

      ),
    );
  }
}




