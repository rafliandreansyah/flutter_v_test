import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/shared/fonts.dart';

class TextGreetingBanner extends StatelessWidget {
  final String greetingInfo;
  const TextGreetingBanner({
    super.key,
    required this.greetingInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
          greetingInfo,
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
        )
      ],
    );
  }
}
