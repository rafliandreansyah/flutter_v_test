import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_v_test/bloc/authentication/login_bloc.dart';
import 'package:flutter_v_test/screen/home_screen.dart';
import 'package:flutter_v_test/screen/login_screen.dart';
import 'package:flutter_v_test/screen/register_screen.dart';
import 'package:flutter_v_test/shared/colors.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (BuildContext context) => LoginBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter V Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: colorPrimary,
        ),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      initialRoute: LoginScreen.route,
      routes: {
        LoginScreen.route: (context) => const LoginScreen(),
        RegisterScreen.route: (context) => const RegisterScreen(),
        HomeScreen.route: (context) => const HomeScreen(),
      },
      builder: EasyLoading.init(),
    );
  }
}
