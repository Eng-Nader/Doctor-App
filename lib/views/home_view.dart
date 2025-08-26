import 'package:flutter/material.dart';
import 'package:omar_bloc/views/chat_view.dart';
import 'package:omar_bloc/views/schulde_view.dart';
import 'package:omar_bloc/views/setting_view.dart';
import 'package:omar_bloc/widget/custom_bottom_navigate.dart';
import 'package:omar_bloc/widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List view = const [
    ChatView(),
    SettingView(),
    HomeViewBody(),
    SchuldeView(),
  ];

  final List<Widget> item = [
    Icon(Icons.message, size: 30),
    Icon(Icons.settings, size: 30),
    Icon(Icons.home, size: 30),
    Icon(Icons.schedule, size: 30)
  ];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: view[index],
      bottomNavigationBar: CustomBottomNavigate(
        index: index,
        onTap: (newIndex) {
          setState(() {
            index = newIndex;
          });
        },
        item: item,
      ),
    );
  }
}
