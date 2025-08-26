import 'package:flutter/material.dart';

class DoctorKindListView extends StatelessWidget {
  const DoctorKindListView({super.key});
  final List<String> kindDoctor = const [
    'Temparture',
    'Snuffle',
    'Fever',
    'Snuffle',
    'Temparture',
    'Fever',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kindDoctor.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 8,
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                color: Color(0xffF3F4F8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  kindDoctor[index],
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
