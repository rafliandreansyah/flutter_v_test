import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hai, Selamat Datang'),
              const SizedBox(
                height: 4,
              ),
              Text('Silahkan login untuk melanjutkan'),
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
              Text('Email'),
              TextField(
                decoration:
                    const InputDecoration(hintText: 'Masukkan email anda'),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text('Password'),
                  Spacer(),
                  Text('Lupa Password anda ?'),
                ],
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Masukkan password anda',
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun ?'),
                  const SizedBox(
                    width: 6,
                  ),
                  Text('Daftar Sekarang'),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/ic_copyright.png',
                        width: 16,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text('SILK. all right reserved.'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
