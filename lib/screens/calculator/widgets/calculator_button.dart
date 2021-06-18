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
        margin: const EdgeInsets.all(15.0),
        alignment: Alignment.center,
        decoration: isEqualButton
            ? BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8.0),
              )
            : null,
        child: Text(
          buttonText,
          style: TextStyle(
            color: color,
            fontFamily: 'Poppins',
            fontSize: size,
          ),
        ),
      ),
    );
  }
}
