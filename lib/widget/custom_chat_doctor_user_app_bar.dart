import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/asset_image.dart';
import 'package:omar_bloc/core/utils/colors.dart';

class CutomChatDoctorUserAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CutomChatDoctorUserAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorsAseets.primaryColor,
      title: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              DoctorImage.doctor2,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Dr: Doctor Name',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.call,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.video_call,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
