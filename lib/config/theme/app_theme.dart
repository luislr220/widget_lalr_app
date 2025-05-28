import 'package:flutter/material.dart';

const colorList = <Color>[
  Color(0xFF1A237E), // Dark Blue
  Color(0xFF283593), // Medium Blue
  Color(0xFF3949AB), // Light Blue
  Color(0xFF5C6BC0), // Lighter Blue
  Color(0xFF7986CB), // Very Light Blue
  Color(0xFF9FA8DA), // Pale Blue
  Color(0xFFC5CAE9), // Very Pale Blue
  Color(0xFFE8EAF6), // Almost White Blue
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
    : assert(selectedColor >= 0, 'Selecciona un color mayor a 0'),
      assert(
        selectedColor < colorList.length,
        'Selecciona un color menor a ${colorList.length}',
      );

  ThemeData getTheme() => ThemeData(colorSchemeSeed: colorList[selectedColor]);
}
