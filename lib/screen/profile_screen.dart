import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(
                10,
              ),
              spreadRadius:
                  0, //also play with this two values to achieve your ideal result
              blurRadius: 8,
              offset: const Offset(
                0,
                8,
              ),
            ),
          ]),
      child: Column(
        children: [
          Container(
            width: 320,
            height: 170,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/img_bg_card_profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
