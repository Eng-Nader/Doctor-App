import 'package:flutter/material.dart';

class DoctorKindGridView extends StatelessWidget {
  const DoctorKindGridView({super.key});
  final List<String> doctoImage = const [
    'assets/images/doctor2.jpg',
    'assets/images/doctor3.jpg',
    'assets/images/doctor4.jpg',
    'assets/images/doctor1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Card(
            elevation: 8,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(doctoImage[index]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Dr: Doctor Name',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Therapts',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amberAccent,
                        ),
                        Text(
                          '4.5',
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
