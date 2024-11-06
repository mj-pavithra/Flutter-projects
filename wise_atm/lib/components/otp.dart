import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpInputField extends StatefulWidget{
  const OtpInputField({Key? key}): super(key: key);

  @override
  _OtpInputFieldState createState() => _OtpInputFieldState();
}

class _OtpInputFieldState extends State<OtpInputField>{

  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());

  @override
  void dispose(){
    for (var controller in _controllers){
      controller.dispose();
    }
    super.dispose();
  }
  Widget _buildOtpBox(int index){
    return SizedBox(
      width: 50,
      height: 50,

      child: TextField(
        controller: _controllers[index],
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        maxLength: 1,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.top,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          counterText: "", // hides the max length counter
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0), // Rounded border
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (value){
          if (value.isNotEmpty && index <3 ){
            FocusScope.of(context).nextFocus();
          } 
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:List.generate(4, (index) => _buildOtpBox(index))
    );
  }
}
