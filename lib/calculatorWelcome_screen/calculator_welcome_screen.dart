import 'package:calculator_1/calculatorWelcome_screen/custom_button.dart';
import 'package:calculator_1/calculatorWelcome_screen/custom_textfield.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

final TextEditingController s1 = TextEditingController(text: "0");
final TextEditingController s2 = TextEditingController(text: "0");

class _CalculatorState extends State<Calculator> {
  double numberOne = 0;
  double numberTwo = 0;
  double result = 0;
  void Add() {
    setState(() {
      numberOne = double.parse(s1.text);
      numberTwo = double.parse(s2.text);
      result = numberOne + numberTwo;
      print("$result");
    });
  }

  void Remowe() {
    setState(() {
      numberOne = double.parse(s1.text);
      numberTwo = double.parse(s2.text);
      result = numberOne - numberTwo;
      print("$result");
    });
  }

  void divide() {
    setState(() {
      numberOne = double.parse(s1.text);
      numberTwo = double.parse(s2.text);
      result = numberOne / numberTwo;
      print("$result");
    });
  }

  void multiplication() {
    setState(() {
      numberOne = double.parse(s1.text);
      numberTwo = double.parse(s2.text);
      result = numberOne * numberTwo;
      print("$result");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: customTextfield(s1, TextInputType.name, Icons.numbers,
                    "SayıBir", false, TextInputAction.next),
              ),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: customTextfield(s2, TextInputType.name, Icons.numbers,
                    "SayıBir", false, TextInputAction.next),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Add();
                },
                icon: Icon(Icons.add),
                iconSize: 40,
              ),
              IconButton(
                onPressed: () {
                  Remowe();
                },
                icon: Icon(Icons.remove),
                iconSize: 40,
              ),
              IconButton(
                onPressed: () {
                  divide();
                },
                icon: Icon(Icons.align_horizontal_center),
                iconSize: 40,
              ),
              IconButton(
                onPressed: () {
                  multiplication();
                },
                icon: Icon(Icons.close),
                iconSize: 40,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "$result",
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
