import 'package:flutter/material.dart';
import 'package:flutter_v_test/screen/home_screen.dart';
import 'package:flutter_v_test/screen/register_screen.dart';
import 'package:flutter_v_test/widget/text_copy_right.dart';
import 'package:flutter_v_test/widget/text_field_default.dart';
import 'package:flutter_v_test/widget/text_field_login_password.dart';
import 'package:flutter_v_test/widget/button_primary.dart';
import 'package:flutter_v_test/widget/text_greeting_banner.dart';

import '../widget/text_switch_login_register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: Column(
              children: [
                const TextGreetingBanner(
                  greetingInfo: 'Silahkan login untuk melanjutkan',
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFieldDefault(
                  label: 'Email',
                  hint: 'Masukkan email anda',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFieldLoginPassword(
                  label: 'Password',
                  hint: 'Masukkan password anda',
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 40,
                ),
                ButtonPrimary(
                  label: 'Login',
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      HomeScreen.route,
                    );
                  },
                  iconEnd: Icons.arrow_forward,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextSwitchLoginRegister(
                  labelQuestion: 'Belum punya akun ?',
                  labelSwitch: 'Daftar Sekarang',
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      RegisterScreen.route,
                    );
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                const TextCopyRight(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
