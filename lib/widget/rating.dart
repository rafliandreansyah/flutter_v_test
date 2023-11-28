import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/shared/fonts.dart';

class Rating extends StatelessWidget {
  final String rating;
  const Rating({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icons/ic_rating.png',
          width: 20,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          rating,
          style: proximaSemiBold.copyWith(
            fontSize: 16,
            color: colorLightGrey,
          ),
        ),
      ],
    );
  }
}
