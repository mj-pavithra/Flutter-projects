import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wise_atm/components/blueBigbutton.dart';

class LogIn extends StatelessWidget{
  const LogIn ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Welcome back"),
            const Text("Log in to your account"),
            IntlPhoneField(
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border:  OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
            const Text('You may receive an SMS verification that may apply message and data rates',
              style: TextStyle(
                color: Colors.black12,

              ),
            ),
            Container(
              child: Column(
                children: [
                  BlueBigButton(text: "Continue", onPressed: (){
                    Navigator.pushNamed(context, '/verification');
                  })
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}