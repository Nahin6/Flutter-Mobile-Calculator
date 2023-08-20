// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
// import 'package:math_expressions/math_expressions.dart' as mathParser;
import 'package:mobile_calculator/Screens/Buttons.dart';
// import 'dart:math' as math;

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({
    super.key,
  });

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double num1 = 0.0;
  double num2 = 0.0;
  var operation = '';
  var input = '';
  var output = '';
  var hideInput = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(12, 14, 36, 51),
        title: const Text(
          "Calculator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 30),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    hideInput ? '' : input,
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  Text(
                    output,
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                ],
              ),
            ),
            Divider(height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Buttons(
                  // buttonText: Icon(Icons.abc),
                  buttonText: 'V',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: 'C',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: 'X',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '/',
                  onPressed: onPressedCalculation,
                ),
              ],
            ),
            Row(
              children: [
                Buttons(
                  buttonText: '(',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: ')',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '%',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '*',
                  onPressed: onPressedCalculation,
                ),
              ],
            ),
            Row(
              children: [
                Buttons(
                  buttonText: '1',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '2',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '3',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '-',
                  onPressed: onPressedCalculation,
                ),
              ],
            ),
            Row(
              children: [
                Buttons(
                  buttonText: '4',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '5',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '6',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '+',
                  onPressed: onPressedCalculation,
                ),
              ],
            ),
            Row(
              children: [
                Buttons(
                  buttonText: '7',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '8',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '9',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '^',
                  onPressed: onPressedCalculation,
                ),
              ],
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Buttons(
                  buttonText: '0',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '00',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '.',
                  onPressed: onPressedCalculation,
                ),
                Buttons(
                  buttonText: '=',
                  onPressed: onPressedCalculation,
                  backgroundColor: Color.fromARGB(255, 41, 109, 152),
                  // backgroundColor: Color.fromARGB(255, 11, 52, 79),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // void onPressedCalculation(value) {
  //   setState(() {
  //     if (value == '+' ||
  //         value == '-' ||
  //         value == '*' ||
  //         value == '/' ||
  //         value == '^' ||
  //         value == '%') {
  //       // If an operator is pressed, update num1 and operation
  //       num1 = double.parse(input);
  //       operation = value;
  //       input += value;
  //     } else if (value == '=') {
  //       // output = evaluateExpression(input).toString();
  //       // If '=' is pressed, perform the calculation
  //       var parts = input.split(operation);
  //       if (parts.length != 2) {
  //         // Invalid input
  //         output = 'Error';
  //       } else {
  //         num1 = double.parse(parts[0]);
  //         num2 = double.parse(parts[1]);
  //         switch (operation) {
  //           case '+':
  //             output = (num1 + num2).toString();
  //             break;
  //           case '-':
  //             output = (num1 - num2).toString();
  //             break;
  //           case '*':
  //             output = (num1 * num2).toString();
  //             break;
  //           case '/':
  //             output = (num1 / num2).toString();
  //             break;
  //           case '^':
  //             output = (math.pow(num1, num2)).toString();
  //             break;
  //           case '%':
  //             output = calculatePercentage(num1, num2).toString();
  //             break;
  //         }
  //       }
  //       operation = '';

  //       // num1 = 0.0;
  //       num2 = 0.0;
  //       input = output;
  //     } else if (value == 'C') {
  //       // If 'C' is pressed, clear everything
  //       num1 = 0.0;
  //       num2 = 0.0;
  //       operation = '';
  //       input = '';
  //       output = '';
  //     } else if (value == 'X') {
  //       if (input.isNotEmpty) {
  //         input = input.substring(0, input.length - 1);
  //       }
  //     } else {
  //       // Append the pressed digit or decimal point to input
  //       input += value;
  //     }
  //   });
  // }
  void onPressedCalculation(value) {
    setState(() {
      if (value == 'C') {
        num1 = 0.0;
        num2 = 0.0;
        operation = '';
        input = '';
        output = '';
      } else if (value == 'X') {
        if (input.isNotEmpty) {
          input = input.substring(0, input.length - 1);
        }
      } else if (value == '=') {
        if (input.isNotEmpty) {
          var useInput = input;
          Parser parser = Parser();
          Expression expression = parser.parse(useInput);
          ContextModel model = ContextModel();
          var result = expression.evaluate(EvaluationType.REAL, model);
          output = result.toString();
          if (output.endsWith('.0')) {
            output = output.substring(0, output.length - 2);
          }
          input = output;
          hideInput = true;
        }
      } else {
        input += value;
        hideInput = false;
      }
    });
  }

  double calculatePercentage(double value, double percentage) {
    return (value * percentage) / 100;
  }
}
