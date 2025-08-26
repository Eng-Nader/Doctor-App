import 'package:flutter/material.dart';
import 'package:omar_bloc/views/chat_doctor_user.dart';

class ChatDoctor extends StatelessWidget {
  const ChatDoctor({super.key});
  final List<String> doctoImage = const [
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor4.jpg',
    'assets/images/doctor1.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor4.jpg',
    'assets/images/doctor1.jpg',
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor4.jpg',
    'assets/images/doctor1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: doctoImage.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ChatDoctorUser();
              }));
            },
            child: Card(
              elevation: 4,
              color: Colors.white,
              child: SizedBox(
                height: 70,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      doctoImage[index],
                    ),
                  ),
                  title: Text(
                    'Dr: Doctor Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Hellow , Doctor Are you there ?',
                    style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  trailing: Text(
                    '12:30',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
