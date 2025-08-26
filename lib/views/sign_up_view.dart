import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/asset_image.dart';
import 'package:omar_bloc/views/login_view.dart';
import 'package:omar_bloc/widget/custom_button.dart';
import 'package:omar_bloc/widget/custom_text_fild.dart';
import 'package:omar_bloc/widget/custom_text_login_singup.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              DoctorImage.doctor1,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFild(
              icon: Icons.person,
              hintText: 'Full Name',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFild(
              icon: Icons.email,
              hintText: 'Email ',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFild(
              icon: Icons.phone,
              hintText: 'Phone Number',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFild(
              icon: Icons.person,
              hintText: 'Email Password',
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              title: 'Create Account',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginView();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextLoginSingup(
              text1: 'Already have Account',
              text2: 'Login',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginView();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
