import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../details/fonts.dart';

class CustomList extends StatelessWidget {
  const CustomList({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.onSelected,
  }) : super(key: key);

  final bool isSelected;
  final String title;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        onSelected: onSelected,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        side: const BorderSide(
          width: 1,
          color: Color(0xff2B4C59),
        ),
        selectedColor: Color(0xff2B4C59),
        backgroundColor: Colors.white,
        disabledColor: Colors.white,
        label: Text(
          title,
          style: AppFonts.w700h12,
        ),
        selected: isSelected);
  }
}
