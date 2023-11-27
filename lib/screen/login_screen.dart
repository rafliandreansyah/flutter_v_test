import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/widget/text_copy_right.dart';
import 'package:flutter_v_test/widget/text_field_default.dart';
import 'package:flutter_v_test/widget/text_field_login_password.dart';
import 'package:flutter_v_test/widget/button_primary.dart';

import '../shared/fonts.dart';
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
    var _isVisible = false;

    void changeVisibility() {
      setState(() {
        _isVisible = !_isVisible;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Text(
                      'Hai,',
                      style: gilroyMedium.copyWith(
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Selamat Datang',
                      style: gilroyBold.copyWith(
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Silahkan login untuk melanjutkan',
                  style: proximaSemiBold.copyWith(
                    fontSize: 12,
                    color: colorLightBlue,
                  ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    Image.asset(
                      'assets/images/img_login_and_register_banner.png',
                      height: 218,
                    ),
                  ],
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
                PrimaryButton(
                  label: 'Login',
                  onPressed: () {},
                  iconEnd: Icons.arrow_forward,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextSwitchLoginRegister(
                  labelQuestion: 'Belum punya akun ?',
                  labelSwitch: 'Daftar Sekarang',
                  onPressed: () {},
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
