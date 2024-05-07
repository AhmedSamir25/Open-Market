import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_market/core/function/email_valid.dart';
import 'package:open_market/core/function/password_valid.dart';
import 'package:open_market/features/auth/logic/auth_cubit/auth_cubit.dart';
import 'package:open_market/features/auth/view/widgets/custom_auth_text_field.dart';

class SignupTextForm extends StatefulWidget {
  const SignupTextForm({super.key});

  @override
  State<SignupTextForm> createState() => _SignupTextFormState();
}

class _SignupTextFormState extends State<SignupTextForm> {
  late bool showPassword;
  final RegExp regex = RegExp(r'^[a-zA-Z]+$');
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
      key: authCubit.formKeySignup,
      child: Column(
        children: [
          CustomAuthTextField(
            labelText: 'Name',
            keyboardType: TextInputType.name,
            validator: (name) {
              if (regex.hasMatch(name.toString()) == false ||
                  name.toString().isEmpty ||
                  name.toString().length < 3) {
                return 'Enter a valid name';
              } else {
                return null;
              }
            },
            controller: authCubit.nameConteoller,
            prefixIcon: const Icon(Icons.person),
            obscureText: false,
          ),
          SizedBox(
            height: heightMedia * 0.025,
          ),
          CustomAuthTextField(
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress,
            validator: (email) => validateEmail(email!),
            controller: authCubit.emailConteoller,
            prefixIcon: const Icon(Icons.email),
            obscureText: false,
          ),
          SizedBox(
            height: heightMedia * 0.025,
          ),
          CustomAuthTextField(
            labelText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            validator: (password) => validatePassword(password!),
            controller: authCubit.passwordConteoller,
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