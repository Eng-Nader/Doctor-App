import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/colors.dart';
import 'package:omar_bloc/widget/cusotm_item_visit.dart';

class CutomHomeContainer extends StatelessWidget {
  const CutomHomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CusotmItemVisit(
          containerColor: ColorsAseets.primaryColor,
          text1: 'Clinic Visit ',
          text2: 'Make on Appronment',
          textColor: Colors.white,
          icon: Icons.add,
          iconColor: Colors.black,
          circleAvatarColor: Colors.white,
        ),
        CusotmItemVisit(
          containerColor: Colors.white,
          text1: 'Home visit',
          text2: 'Call the doctor home',
          textColor: Colors.black,
          icon: Icons.home,
          iconColor: ColorsAseets.primaryColor,
          circleAvatarColor: Colors.grey.shade100,
        ),
      ],
    );
  }
}

