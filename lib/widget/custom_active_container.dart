import 'package:flutter/material.dart';

class CustomActiveContainer extends StatelessWidget {
  const CustomActiveContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 16,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle,
      ),
    );
  }
}
