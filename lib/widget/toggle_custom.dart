import 'package:flutter/material.dart';
import 'package:flutter_v_test/shared/colors.dart';
import 'package:flutter_v_test/shared/fonts.dart';

class ToggleCustom extends StatefulWidget {
  final List<bool> isSelected;
  final List<String> titles;
  const ToggleCustom({
    super.key,
    required this.isSelected,
    required this.titles,
  });

  @override
  State<ToggleCustom> createState() => _ToggleCustomState();
}

class _ToggleCustomState extends State<ToggleCustom> {
  List<Widget> generateServiceType() {
    List<Widget> serviceWidget = [];
    for (var i = 0; i < widget.isSelected.length; i++) {
      serviceWidget.add(
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: widget.isSelected[i] ? colorSecondary : null,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            widget.titles[i],
            style: widget.isSelected[i]
                ? proximaSemiBold.copyWith(
                    fontSize: 14,
                  )
                : proximaRegular.copyWith(
                    fontSize: 14,
                    color: colorPrimary,
                  ),
          ),
        ),
      );
    }

    return serviceWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          100,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            spreadRadius: 5,
            blurRadius: 8,
            offset: const Offset(
              0,
              8,
            ),
          ),
        ],
      ),
      child: ToggleButtons(
        borderWidth: 0,
        selectedBorderColor: Colors.transparent,
        fillColor: Colors.transparent,
        borderColor: Colors.transparent,
        splashColor: Colors.transparent,
        onPressed: (index) {
          setState(() {
            // The button that is tapped is set to true, and the others to false.
            for (int i = 0; i < widget.isSelected.length; i++) {
              widget.isSelected[i] = i == index;
            }
          });
        },
        isSelected: widget.isSelected,
        children: generateServiceType(),
      ),
    );
  }
}
