import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_lalr_app/config/theme/app_theme.dart';

//Un simple valor booleano
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Lista de colores
final colorListProvider = Provider((ref) => colorList);

//Un objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme(isDarkMode: false, selectedColor: 0));

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

    void changeColor(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
