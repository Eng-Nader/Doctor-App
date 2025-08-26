import 'package:flutter/material.dart';
import 'package:omar_bloc/views/introduction_view.dart';

void main() 
{
  runApp(
    const HealthApp(),
  );
}

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionView(),
    );
  }
}
