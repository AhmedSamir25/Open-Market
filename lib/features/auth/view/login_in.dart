import 'package:flutter/material.dart';
import 'package:open_market/features/auth/view/widgets/head_body_text.dart';
import 'package:open_market/features/auth/view/widgets/login_text_form.dart';
import 'package:open_market/features/auth/view/widgets/material_button.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    // double widthMedia = MediaQuery.of(context).size.width;
    double heightMedia = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: heightMedia * 0.09,
              ),
              const HeadBodyText(),
              SizedBox(
                height: heightMedia * 0.045,
              ),
              const LoginTextForm(),
              SizedBox(
                height: heightMedia * 0.045,
              ),
              const CustomMaterialButton(),
            ],
          ),
        ),
      ),
    );
  }
}