import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/shared/fonts.dart';

class ButtonCategory extends StatelessWidget {
  final String label;
  final bool isSelected;
  const ButtonCategory({
    super.key,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
          color: isSelected ? colorPrimary : Colors.white,
          borderRadius: BorderRadius.circular(
            50,
          ),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(
                  10,
                ),
                spreadRadius: 5,
                blurRadius: 8,
                offset: const Offset(
                  0,
                  8,
                ))
          ]),
      child: Center(
        child: Text(
          label,
          style: proximaBold.copyWith(
            color: isSelected ? Colors.white : colorPrimary,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
