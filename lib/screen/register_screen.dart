import 'package:flutter/material.dart';
import 'package:flutter_v_test/widget/button_primary.dart';
import 'package:flutter_v_test/widget/text_copy_right.dart';
import 'package:flutter_v_test/widget/text_field_default.dart';
import 'package:flutter_v_test/widget/text_greeting_banner.dart';
import 'package:flutter_v_test/widget/text_switch_login_register.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const route = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final idNumberController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: Column(
              children: [
                TextGreetingBanner(
                  greetingInfo: 'Silahkan registrasi untuk melanjutkan',
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFieldDefault(
                        label: 'Nama Depan',
                        hint: 'Masukkan nama depan',
                        controller: firstNameController,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFieldDefault(
                        label: 'Nama Belakang',
                        hint: 'Masukkan nama belakang',
                        controller: firstNameController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFieldDefault(
                  label: 'No. KTP',
                  hint: 'Masukkan No. KTP anda',
                  controller: idNumberController,
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFieldDefault(
                  label: 'Email',
                  hint: 'Masukkan email anda',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFieldDefault(
                  label: 'No. Telpon',
                  hint: 'Masukkan password anda',
                  controller: phoneNumberController,
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFieldDefault(
                  label: 'Password',
                  hint: 'Masukkan password anda',
                  controller: passwordController,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFieldDefault(
                  label: 'Konfirmasi Password',
                  hint: 'Konfirmasi password anda',
                  controller: passwordConfirmController,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                PrimaryButton(
                  label: 'Register',
                  onPressed: () {},
                  iconEnd: Icons.arrow_forward,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextSwitchLoginRegister(
                  labelQuestion: 'Sudah punya akun ?',
                  labelSwitch: 'Login Sekarang',
                  onPressed: () {
                    Navigator.of(context).pop();
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
