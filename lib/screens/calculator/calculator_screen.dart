import 'package:calculadora/screens/calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _calcPrimaryText = '0';
  String _calcSecondaryText = '';
  bool _operate = false;

  void _sum() {

  }

  void _subtraction() {}

  void _multiplication() {}

  void _division() {}

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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  _calcSecondaryText,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    _calcPrimaryText,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 60.0,
                    ),
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
              CalculatorButton(
                buttonText: 'C',
                onPressed: () {
                  setState(() {
                    _calcPrimaryText = '0';
                  });
                },
              ),
              CalculatorButton(buttonText: '%'),
              CalculatorButton(
                buttonText: '±',
                onPressed: () {
                  if (_calcPrimaryText != '0' &&
                      !_calcPrimaryText.contains('-')) {
                    setState(() {
                      _calcPrimaryText = '-' + _calcPrimaryText;
                    });
                  } else if (_calcPrimaryText != '0') {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText.substring(
                          1, _calcPrimaryText.length);
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '÷',
                color: Theme.of(context).primaryColor,
                size: 42.0,
              ),
              CalculatorButton(
                buttonText: '7',
                onPressed: () {
                  if (_calcPrimaryText == '0') {
                    setState(() {
                      _calcPrimaryText = '7';
                    });
                  } else {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '7';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '8',
                onPressed: () {
                  if (_calcPrimaryText == '0') {
                    setState(() {
                      _calcPrimaryText = '8';
                    });
                  } else {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '8';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '9',
                onPressed: () {
                  if (_calcPrimaryText == '0') {
                    setState(() {
                      _calcPrimaryText = '9';
                    });
                  } else {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '9';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '×',
                color: Theme.of(context).primaryColor,
                size: 42.0,
              ),
              CalculatorButton(
                buttonText: '4',
                onPressed: () {
                  if (_calcPrimaryText == '0') {
                    setState(() {
                      _calcPrimaryText = '4';
                    });
                  } else {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '4';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '5',
                onPressed: () {
                  if (_calcPrimaryText == '0') {
                    setState(() {
                      _calcPrimaryText = '5';
                    });
                  } else {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '5';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '6',
                onPressed: () {
                  if (_calcPrimaryText == '0') {
                    setState(() {
                      _calcPrimaryText = '6';
                    });
                  } else {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '6';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '-',
                color: Theme.of(context).primaryColor,
                size: 42.0,
              ),
              CalculatorButton(
                buttonText: '1',
                onPressed: () {
                  if (_calcPrimaryText == '0') {
                    setState(() {
                      _calcPrimaryText = '1';
                    });
                  } else {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '1';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '2',
                onPressed: () {
                  if (_calcPrimaryText == '0') {
                    setState(() {
                      _calcPrimaryText = '2';
                    });
                  } else {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '2';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '3',
                onPressed: () {
                  if (_calcPrimaryText == '0') {
                    setState(() {
                      _calcPrimaryText = '3';
                    });
                  } else {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '3';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '+',
                color: Theme.of(context).primaryColor,
                size: 42.0,
                onPressed: () {
                  if (!_calcSecondaryText.contains('+')) {
                    setState(() {
                      _calcSecondaryText = _calcPrimaryText + ' + ';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '‹',
                onPressed: () {
                  if (_calcPrimaryText.length == 1) {
                    setState(() {
                      _calcPrimaryText = '0';
                    });
                  } else {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText.substring(
                          0, _calcPrimaryText.length - 1);
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '0',
                onPressed: () {
                  if (_calcPrimaryText != '0') {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '0';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '.',
                onPressed: () {
                  if (!_calcPrimaryText.contains('.')) {
                    setState(() {
                      _calcPrimaryText = _calcPrimaryText + '.';
                    });
                  }
                },
              ),
              CalculatorButton(
                buttonText: '=',
                onPressed: () {},
                color: Colors.black,
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
