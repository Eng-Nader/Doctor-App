import 'package:flutter/material.dart';

class ChatBubleFriednd extends StatelessWidget {
  const ChatBubleFriednd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding:
            const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
        decoration: const BoxDecoration(
          color: Color(0xff006D84),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Text(
          'Iam Fine and you ',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}