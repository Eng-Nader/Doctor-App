import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/colors.dart';

class CustomBottomNavigate extends StatelessWidget {
 const   CustomBottomNavigate({
    super.key,
    required this.index,
    required this.onTap, required this.item,
  });
  final int index;
  final void Function(int)? onTap;
  final List <Widget>item ; 

  

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      child: CurvedNavigationBar(
        onTap: onTap,
        height: 65,
        color: ColorsAseets.primaryColor,
        backgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 500),
        index: index,
        items: item,
      ),
    );
  }
}
