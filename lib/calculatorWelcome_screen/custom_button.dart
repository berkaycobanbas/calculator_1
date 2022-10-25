import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.function,
    required this.buttonColor,
    required this.textColor,
  }) : super(key: key);

  final String text;
  final Function function;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => function(),
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: buttonColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: AutoSizeText(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: textColor,
                fontSize: 15,
              ),
              minFontSize: 1,
            ),
          ),
        ),
      ),
    );
  }
}
