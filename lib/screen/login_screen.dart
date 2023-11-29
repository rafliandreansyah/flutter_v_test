import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_v_test/model/login_request.dart';
import 'package:flutter_v_test/screen/main_screen.dart';
import 'package:flutter_v_test/screen/register_screen.dart';
import 'package:flutter_v_test/widget/text_copy_right.dart';
import 'package:flutter_v_test/widget/text_field_default.dart';
import 'package:flutter_v_test/widget/text_field_login_password.dart';
import 'package:flutter_v_test/widget/button_primary.dart';
import 'package:flutter_v_test/widget/text_greeting_banner.dart';

import '../bloc/authentication/login_bloc.dart';
import '../widget/text_switch_login_register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const route = '/';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    BlocProvider.of<LoginBloc>(context).add(CheckLoginEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    String? emailError;
    String? passwordError;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              20,
            ),
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                emailError = null;
                passwordError = null;
                if (state is EmailBlank) {
                  emailError = state.error;
                } else if (state is PasswordBlank) {
                  passwordError = state.error;
                } else if (state is LoginLoading) {
                  EasyLoading.show();
                } else if (state is LoginSuccess) {
                  EasyLoading.dismiss();
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    Navigator.of(context).pushReplacementNamed(
                      MainScreen.route,
                    );
                  });
                } else if (state is LoginError) {
                  EasyLoading.dismiss();
                  EasyLoading.showError(state.error);
                }

                if (state is LoginRedirect) {
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    Navigator.of(context).pushReplacementNamed(
                      MainScreen.route,
                    );
                  });
                  return const Column(
                    children: [],
                  );
                } else {
                  return Column(
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
                        errorMsg: emailError,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFieldLoginPassword(
                        label: 'Password',
                        hint: 'Masukkan password anda',
                        controller: passwordController,
                        errorMsg: passwordError,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ButtonPrimary(
                        label: 'Login',
                        onPressed: () {
                          BlocProvider.of<LoginBloc>(context).add(
                            PostLoginEvent(
                              LoginRequest(
                                emailController.text.trim(),
                                passwordController.text.trim(),
                              ),
                            ),
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
                          Navigator.of(context).pushNamed(RegisterScreen.route);
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const TextCopyRight(),
                    ],
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
