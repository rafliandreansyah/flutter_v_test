import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/fonts.dart';

class TextFieldDefault extends StatelessWidget {
  String label;
  String hint;
  TextEditingController controller;

  TextFieldDefault({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: gilroySemiBold.copyWith(
            fontSize: 16,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 12,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10,
            ),
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
            ],
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: proximaRegular.copyWith(
                color: colorLightGrey,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
