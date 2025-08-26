import 'package:flutter/material.dart';
import 'package:omar_bloc/widget/custom_active_container.dart';

class DoctorActiveListViw extends StatelessWidget {
  const DoctorActiveListViw({
    super.key,
  });
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
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: doctoImage.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      doctoImage[index],
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: CustomActiveContainer(),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

