import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({super.key, required this.icon, required this.hintText,  this.obscureText = false});
  final IconData icon;
  final String hintText;
  final bool obscureText; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: obscureText ,
        decoration: InputDecoration(
          hint: Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Text(
                hintText,
              )
            ],
          ),
          focusedBorder: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
  );
}
