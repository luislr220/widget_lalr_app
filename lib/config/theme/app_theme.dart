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
  final bool isDarkMode;

  AppTheme({required this.selectedColor, required this.isDarkMode})
    : assert(selectedColor >= 0, 'Selecciona un color mayor a 0'),
      assert(
        selectedColor < colorList.length,
        'Selecciona un color menor a ${colorList.length}',
      );

  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: true,
      //elevation: 1,
    ),
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
  );

  AppTheme copyWith({bool? isDarkMode, int? selectedColor}) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkMode ?? this.isDarkMode,
  );
}
