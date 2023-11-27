import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/fonts.dart';

class TextSwitchLoginRegister extends StatelessWidget {
  String labelQuestion;
  String labelSwitch;
  Function() onPressed;
  TextSwitchLoginRegister({
    super.key,
    required this.labelQuestion,
    required this.labelSwitch,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          labelQuestion,
          style: proximaRegular.copyWith(
            color: colorLightGrey,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            labelSwitch,
            style: proximaSemiBold.copyWith(
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
