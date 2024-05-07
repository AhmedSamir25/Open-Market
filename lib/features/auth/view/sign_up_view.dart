import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:open_market/core/function/email_valid.dart';
import 'package:open_market/features/auth/logic/auth_cubit/auth_cubit.dart';
import 'package:open_market/features/auth/view/widgets/button_login_or_sign_up.dart';
import 'package:open_market/features/auth/view/widgets/head_body_text.dart';
import 'package:open_market/features/auth/view/widgets/material_button.dart';
import 'package:open_market/features/auth/view/widgets/signup_text_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
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
            const SignupTextForm(),
            SizedBox(
              height: heightMedia * 0.045,
            ),
             CustomMaterialButton(
              iconData: Icons.email,
              textButton: 'Sign up',
              onPressed: (){
                if (context.read<AuthCubit>().formKey.currentState!.validate()) {
                  print('aaaaaaaaaaaaaaaaa');
                }
              },
            ),
            ButtonLoginOrSignUp(
                textButton: 'Login',
                text: "you have account?",
                onPressed: () {
                  GoRouter.of(context).pop();
                })
          ],
        ),
      ),
    );
  }
}