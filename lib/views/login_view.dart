import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/asset_image.dart';
import 'package:omar_bloc/views/home_view.dart';
import 'package:omar_bloc/views/sign_up_view.dart';
import 'package:omar_bloc/widget/custom_button.dart';
import 'package:omar_bloc/widget/custom_text_fild.dart';
import 'package:omar_bloc/widget/custom_text_login_singup.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Hero(
                tag: 'doctor1',
                child: Image.asset(
                  DoctorImage.doctor1,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              CustomTextFild(
                icon: Icons.email,
                hintText: 'Email',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFild(
                obscureText: true,
                icon: Icons.password,
                hintText: 'password',
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                title: 'Login',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeView(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextLoginSingup(
                  text1: 'Dont have Account ?',
                  text2: 'SingUP ',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpView();
                        },
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
