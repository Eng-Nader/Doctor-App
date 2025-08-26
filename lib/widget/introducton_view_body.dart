import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/asset_image.dart';
import 'package:omar_bloc/core/utils/colors.dart';
import 'package:omar_bloc/views/home_view.dart';
import 'package:omar_bloc/views/login_view.dart';

import 'package:omar_bloc/views/sign_up_view.dart';
import 'package:omar_bloc/widget/login_signup_button.dart';

class IntroductonViewBody extends StatelessWidget {
  const IntroductonViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeView()));
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: ColorsAseets.primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Hero(
            tag: 'doctor1',
            child: Image.asset(
              DoctorImage.doctor1,
              width: 400,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Doctors Appointment',
            style: TextStyle(
              color: ColorsAseets.primaryColor,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            ' Appoint your Doctor',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginSignupButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginView();
                      },
                    ),
                  );
                },
                title: 'Login',
              ),
              SizedBox(
                width: 20,
              ),
              LoginSignupButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpView();
                      },
                    ),
                  );
                },
                title: 'SingUp',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
