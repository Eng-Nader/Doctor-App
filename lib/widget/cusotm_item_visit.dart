import 'package:flutter/material.dart';

class CusotmItemVisit extends StatelessWidget {
  const CusotmItemVisit(
      {super.key,
      required this.containerColor,
      required this.text1,
      required this.text2,
      required this.textColor,
      required this.icon,
      required this.iconColor,
      required this.circleAvatarColor});
  final Color containerColor;
  final String text1;
  final String text2;
  final Color textColor;
  final IconData icon;
  final Color iconColor;
  final Color circleAvatarColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        height: 160,
        width: 170,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: circleAvatarColor,
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                text1,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
