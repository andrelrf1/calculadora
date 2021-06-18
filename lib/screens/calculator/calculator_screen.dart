import 'package:calculadora/screens/calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _calcPrimaryText = '180';
  String _calcSecondaryText = '45 × 8 ÷ 2';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          // SizedBox(height: 160.0),
          Container(
            height: 150,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(_calcSecondaryText),
                Text(
                  _calcPrimaryText,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 60.0,
                  ),
                ),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            children: [
              CalculatorButton(buttonText: 'C'),
              CalculatorButton(buttonText: '%'),
              CalculatorButton(buttonText: '±'),
              CalculatorButton(
                buttonText: '÷',
                color: Theme.of(context).primaryColor,
                size: 42.0,
              ),
              CalculatorButton(buttonText: '7'),
              CalculatorButton(buttonText: '8'),
              CalculatorButton(buttonText: '9'),
              CalculatorButton(
                buttonText: '×',
                color: Theme.of(context).primaryColor,
                size: 42.0,
              ),
              CalculatorButton(buttonText: '4'),
              CalculatorButton(buttonText: '5'),
              CalculatorButton(buttonText: '6'),
              CalculatorButton(
                buttonText: '-',
                color: Theme.of(context).primaryColor,
                size: 42.0,
              ),
              CalculatorButton(buttonText: '1'),
              CalculatorButton(buttonText: '2'),
              CalculatorButton(buttonText: '3'),
              CalculatorButton(
                buttonText: '+',
                color: Theme.of(context).primaryColor,
                size: 42.0,
              ),
              CalculatorButton(buttonText: '‹'),
              CalculatorButton(buttonText: '0'),
              CalculatorButton(buttonText: '.'),
              CalculatorButton(
                buttonText: '=',
                isEqualButton: true,
                size: 42.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
