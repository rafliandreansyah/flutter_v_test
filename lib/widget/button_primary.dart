import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/fonts.dart';

class PrimaryButton extends StatelessWidget {
  IconData? iconStart;
  IconData? iconEnd;
  String label;
  Function() onPressed;
  PrimaryButton({
    super.key,
    this.iconStart,
    this.iconEnd,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: colorPrimary,
          textStyle: gilroySemiBold.copyWith(
            fontSize: 16,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
              opacity: iconStart != null ? 1.0 : 0.0,
              child: Icon(
                iconStart,
                color: Colors.white,
              ),
            ),
            Text(label),
            Opacity(
              opacity: iconEnd != null ? 1.0 : 0.0,
              child: Icon(
                iconEnd,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
