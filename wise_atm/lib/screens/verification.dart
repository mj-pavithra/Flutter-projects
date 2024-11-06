import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wise_atm/components/blueBigbutton.dart';
import 'package:wise_atm/components/otp.dart';

import '';

class Verification extends StatelessWidget{
  const Verification ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "Change number",
            style: TextStyle(
                color: Colors.blue ),),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child:const Text(
                      'Enter autentication code',
                      style:  TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const Text('Enter the 4-digit that we have sent via the',style: TextStyle(fontSize: 16)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('phone number ',style: TextStyle(fontSize: 16),),
                      Text('+94 76-544-9397',
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: const OtpInputField(),
                  ),

                ],
              ),
             Container(
               margin: const EdgeInsets.only(bottom: 50),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BlueBigButton(text: "Log in", onPressed: (){
                    Navigator.pushNamed(context, '/home');
                  },
                    isActive: false,
                  ),
                  TextButton(onPressed: (){
                    print(" Resend OTP is clicked");
                  }, child: const  Text(
                    "Resend code",
                    style: TextStyle(
                        color: Colors.blue),
                  )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}