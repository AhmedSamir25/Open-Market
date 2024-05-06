import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:open_market/core/router/app_router.dart';
import 'package:open_market/core/widgets/custom_text_button.dart';
import 'package:open_market/features/auth/view/widgets/button_login_or_sign_up.dart';
import 'package:open_market/features/auth/view/widgets/head_body_text.dart';
import 'package:open_market/features/auth/view/widgets/login_text_form.dart';
import 'package:open_market/features/auth/view/widgets/material_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    // double widthMedia = MediaQuery.of(context).size.width;
    double heightMedia = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(
                height: heightMedia * 0.09,
              ),
              const HeadBodyText(),
              SizedBox(
                height: heightMedia * 0.045,
              ),
              const LoginTextForm(),
              CustomTextButton(
                  textButton: 'Forget Password',
                  onPressed: () {
                    GoRouter.of(context).push(
                      AppRouter.forgetView,
                    );
                  }),
              SizedBox(
                height: heightMedia * 0.045,
              ),
              const CustomMaterialButton(
                iconData: Icons.email,
                textButton: 'Login',
              ),
              ButtonLoginOrSignUp(
                  textButton: 'Sign up',
                  text: "don’t have account?",
                  onPressed: () {
                    GoRouter.of(context).push(
                      AppRouter.signUpView,
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}