import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final String buttonText;
  final bool isEqualButton;
  final double size;

  const CalculatorButton({
    Key? key,
    required this.buttonText,
    this.isEqualButton = false,
    this.size = 36.0,
    this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        child: !isEqualButton
            ? Text(
                buttonText,
                style: TextStyle(
                  color: color,
                  fontFamily: 'Poppins',
                  fontSize: size,
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000),
                        blurRadius: 12.5,
                        offset: Offset(0, 7),
                        spreadRadius: -9,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: color,
                          width: 18.0,
                          height: 3.0,
                        ),
                        SizedBox(height: 4.0),
                        Container(
                          color: color,
                          width: 18.0,
                          height: 3.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
