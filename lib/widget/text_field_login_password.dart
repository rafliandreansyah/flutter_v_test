import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/fonts.dart';

class TextFieldLoginPassword extends StatefulWidget {
  String label;
  String hint;
  TextEditingController controller;
  TextFieldLoginPassword({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
  });

  @override
  State<TextFieldLoginPassword> createState() => _TextFieldLoginPasswordState();
}

class _TextFieldLoginPasswordState extends State<TextFieldLoginPassword> {
  bool _isVisible = false;

  void _changeVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.label,
              style: gilroySemiBold.copyWith(
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Text(
              'Lupa Password anda ?',
              style: proximaSemiBold.copyWith(
                fontSize: 14,
                color: colorLightBlue,
              ),
            ),
          ],
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
            obscureText: !_isVisible,
            controller: widget.controller,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                  _isVisible
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
                iconSize: 20,
                onPressed: _changeVisibility,
              ),
              border: InputBorder.none,
              hintText: widget.hint,
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
