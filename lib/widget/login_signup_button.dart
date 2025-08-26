import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/colors.dart';

class LoginSignupButton extends StatelessWidget {
  const LoginSignupButton(
      {super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: ColorsAseets.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
