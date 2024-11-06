import 'package:flutter/material.dart';


class BlueBigButton extends StatelessWidget{

  final String text;
  final VoidCallback onPressed;

  const BlueBigButton({
    super.key,
    required this.text,
    required this.onPressed

  });

  @override
  Widget build(BuildContext context) {
    return
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(46, 90, 240, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
          )),
    );

  }
}

