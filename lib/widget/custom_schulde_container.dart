import 'package:flutter/material.dart';

class CustomSchuldeContainer extends StatelessWidget {
  const CustomSchuldeContainer(
      {super.key,
      required this.colorContainer,
      required this.colorText,
      required this.text});
  final Color colorContainer;
  final Color colorText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: colorText,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
