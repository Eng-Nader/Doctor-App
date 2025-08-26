import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/colors.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding:
            const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
        decoration: const BoxDecoration(
          color: ColorsAseets.primaryColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Text(
          'Hi how are you todya ',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
