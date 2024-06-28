// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rivaan_ranawat_bloc_supabase_hive_getit/core/theme/app_pallete.dart';
import 'package:rivaan_ranawat_bloc_supabase_hive_getit/features/auth/presentation/pages/signup_page.dart';

import '../widgets/auth_field.dart';
import '../widgets/auth_gradient_button.dart';

class LogInPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => LogInPage(),
      );
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailControler = TextEditingController();
  final passwordControler = TextEditingController();
  // final nameControler = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailControler.dispose();
    passwordControler.dispose();
    // nameControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // formKey.currentState!.validate()
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In.',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // AuthField(
                //   hintText: "Name", controller: nameControler,
                // ),
                // SizedBox(
                //   height: 15,
                // ),
                AuthField(
                  hintText: "Email",
                  controller: emailControler,
                ),
                SizedBox(
                  height: 15,
                ),
                AuthField(
                  hintText: "Password",
                  controller: passwordControler,
                  isObscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                AuthGradientButton(
                  buttonText: 'Log In',
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      SignUpPage.route(),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: 'Sign In',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppPallete.gradient3,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
