import 'package:flutter/material.dart';
import 'package:wise_atm/screens/splash.dart';

void main() {
  runApp(MaterialApp(home: Splash()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          'Hello World3',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
