import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/colors.dart';

class CustomTextLoginSingup extends StatelessWidget {
  const CustomTextLoginSingup({super.key, required this.text1, required this.text2, required this.onTap});
  final String text1 ; 
  final String text2 ; 
  final VoidCallback onTap ; 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap:  onTap, 
          child: Text(
            text2,
            style: TextStyle(
              color: ColorsAseets.primaryColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
