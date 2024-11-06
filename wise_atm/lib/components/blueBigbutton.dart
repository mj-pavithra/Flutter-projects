import 'package:flutter/material.dart';


class BlueBigButton extends StatelessWidget{

  final String text;
  final VoidCallback onPressed;
  final bool isActive ;

  const BlueBigButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isActive

  });


  @override
  Widget build(BuildContext context) {
    return
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200,40),
        foregroundColor: Colors.white,
        backgroundColor: isActive? const Color.fromRGBO(46, 90, 240, 1):Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
          )),
    );

  }
}

