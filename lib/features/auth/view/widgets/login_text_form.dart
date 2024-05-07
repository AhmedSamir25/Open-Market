import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_market/core/function/email_valid.dart';
import 'package:open_market/core/function/password_valid.dart';
import 'package:open_market/features/auth/logic/auth_cubit/auth_cubit.dart';
import 'package:open_market/features/auth/view/widgets/custom_auth_text_field.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  late bool showPassword;
  
  
  @override
  void initState() {
    showPassword = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    final authCubit = BlocProvider.of<AuthCubit>(context);
    return Form(
       key: authCubit.formKeyLogin,
      child: Column(
        children: [
          CustomAuthTextField(
            labelText: 'Email',
            controller: authCubit.emailConteoller,
            keyboardType: TextInputType.emailAddress,
            validator: (emailConteoller) =>
              validateEmail(emailConteoller.toString()),
            prefixIcon: const Icon(Icons.email),
            obscureText: false,
          ),
          SizedBox(
            height: heightMedia * 0.025,
          ),
          CustomAuthTextField(
            labelText: 'Password',
            controller: authCubit.passwordConteoller,
            keyboardType: TextInputType.visiblePassword,
            validator: (passwordConteoller) =>
              validatePassword(passwordConteoller.toString()),
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: showPassword
                    ? const Icon(Icons.remove_red_eye)
                    : const Icon(
                        FontAwesomeIcons.eyeSlash,
                      )),
            obscureText: showPassword,
          ),
        ],
      ),
    );
  }
}
