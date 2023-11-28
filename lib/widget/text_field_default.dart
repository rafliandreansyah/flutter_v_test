import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/fonts.dart';

class TextFieldDefault extends StatefulWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final bool? isPassword;

  const TextFieldDefault({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.isPassword,
  });

  @override
  State<TextFieldDefault> createState() => _TextFieldDefaultState();
}

class _TextFieldDefaultState extends State<TextFieldDefault> {
  bool _isVisible = false;

  void _changeVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
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
          child: widget.isPassword != null && widget.isPassword == true
              ? TextField(
                  obscureText: !_isVisible,
                  controller: widget.controller,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Image.asset(
                        _isVisible
                            ? 'assets/icons/ic_visibility.png'
                            : 'assets/icons/ic_visibility_off.png',
                        width: 20,
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
                )
              : TextField(
                  controller: widget.controller,
                  decoration: InputDecoration(
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
