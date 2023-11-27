import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/fonts.dart';

class TextCopyRight extends StatelessWidget {
  const TextCopyRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/ic_copyright.png',
          width: 16,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          'SILK. all right reserved.',
          style: proximaSemiBold.copyWith(
            color: colorLightGrey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
