import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/asset_image.dart';

class SettingDoctorInfo extends StatelessWidget {
  const SettingDoctorInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(
            DoctorImage.doctor2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Column(
            children: [
              Text(
                'Dr: Doctor Name',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}