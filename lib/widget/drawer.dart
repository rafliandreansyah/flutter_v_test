import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/fonts.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 50,
        ),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img_profile.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Angga',
                        style: gilroyBold,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Praja',
                        style: gilroyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Membership BBLK',
                    style: proximaSemiBold.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
