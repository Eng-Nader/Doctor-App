import 'package:flutter/material.dart';
import 'package:omar_bloc/widget/setting_doctor_info.dart';
import 'package:omar_bloc/widget/setting_list_view.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SettingDoctorInfo(),
              SizedBox(
                height: 50,
              ),
              SettingListView(),
            ],
          ),
        ),
      ),
    );
  }
}
