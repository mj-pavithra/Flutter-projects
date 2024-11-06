import 'package:flutter/material.dart';
import 'package:wise_atm/components/stepperDots.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 0),
              height: 50,
              width: 110,
              child: const Row(
                children: <Widget>[
                  Text(
                    'app',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'name',
                    style: TextStyle(
                        color: Color.fromRGBO(46, 90, 240, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                height: 204,
                width: 204,
                child: Image.asset('assets/img/notebook-dynamic-color.png')),
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: const Column(
                children: [
                  const Text(
                    'Manage your Institute ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w900),
                  ),
                  const Text(
                    'preciously',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 100),
              width: 200,
              child: Column(
                children: <Widget>[
                  DotLoadingIndicator(),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color.fromRGBO(46, 90, 240, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text('Create Account',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                  ),
                  const Row(
                    children: [
                      Text('Have an account?'),
                      Text(
                        ' Log in',
                        style: TextStyle(
                            color: Color.fromRGBO(46, 90, 240, 1),
                            fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
