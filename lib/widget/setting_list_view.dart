import 'package:flutter/material.dart';
import 'package:omar_bloc/models/setting_model.dart';

class SettingListView extends StatelessWidget {
  const SettingListView({
    super.key,
  });
  final List<SettingModel> settingList = const [
    SettingModel(
      Icons.person,
      'Profile',
      Color(0xffBBDDFC),
    ),
    SettingModel(
      Icons.notification_add,
      'Notification',
      Color(0xffD4C2EB),
    ),
    SettingModel(
      Icons.privacy_tip,
      'Privacy',
      Color(0xffC5C9EC),
    ),
    SettingModel(
      Icons.generating_tokens,
      'General',
      Color(0xffC8E8C7),
    ),
    SettingModel(
      Icons.error,
      'About Us ',
      Color(0xffFBDEAD),
    ),
    SettingModel(
      Icons.logout,
      'LogOut',
      Color(0xffDE746F),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: settingList.length,
        itemBuilder: (context, index) => Card(
          elevation: 6,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: settingList[index].color,
                radius: 25,
                child: Icon(
                  settingList[index].icon,
                  size: 30,
                ),
              ),
              title: Text(
                settingList[index].text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
