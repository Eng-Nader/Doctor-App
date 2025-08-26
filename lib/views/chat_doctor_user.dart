import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/colors.dart';
import 'package:omar_bloc/widget/chatbuble.dart';
import 'package:omar_bloc/widget/chatbuble_friend.dart';
import 'package:omar_bloc/widget/custom_chat_doctor_user_app_bar.dart';
import 'package:omar_bloc/widget/custom_text_fild.dart';

class ChatDoctorUser extends StatelessWidget {
  const ChatDoctorUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CutomChatDoctorUserAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return index % 2 == 0 ? ChatBuble() : ChatBubleFriednd();
              },
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                top: 16,
                bottom: 16,
                right: 16,
                left: 16,
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.send,
                    color: ColorsAseets.primaryColor,
                  ),
                  hintText: 'Tepe a Messgae',
                  border: outlineInputBorder(),
                  focusedBorder: outlineInputBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
