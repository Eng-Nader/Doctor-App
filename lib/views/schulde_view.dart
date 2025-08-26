import 'package:flutter/material.dart';
import 'package:omar_bloc/widget/doctor_schulde.dart';

class SchuldeView extends StatelessWidget {
  const SchuldeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return DoctorSchulde();
            },
          ),
        ),
      ),
    );
  }
}
