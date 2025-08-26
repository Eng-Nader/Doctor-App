import 'package:flutter/material.dart';
import 'package:omar_bloc/widget/custom_text_fild.dart';
import 'package:omar_bloc/widget/doctor_active_list_view.dart';
import 'package:omar_bloc/widget/chat_doctor.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Messages',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 8,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search',
                          suffixIcon: Icon(
                            Icons.search,
                          ),
                          hintText: 'Search',
                          focusedBorder: outlineInputBorder(),
                          border: outlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Active Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    DoctorActiveListViw(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Recent Chat',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ChatDoctor(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
