// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final backgroundColor;
  final buttonText;
 
  final Function(String) onPressed;

  const Buttons({
    Key? key,
    required this.onPressed,
    this.backgroundColor,
    this.buttonText,

  }) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          widget.onPressed(widget.buttonText);
        },

        child: Container(
          color: widget.backgroundColor ?? Color.fromARGB(255, 11, 52, 79),

          // color: widget.backgroundColor,
          padding: EdgeInsets.all(15),

          child: Center(
            child: Text(
              widget.buttonText,
              style: TextStyle(
                  fontSize: 25,
                  color: const Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ),
    );
  }
}
