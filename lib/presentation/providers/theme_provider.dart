import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutable
// Provider es para valores inmutables
final colorListProvider = Provider((ref) => colorList);

// StateProvider es para mantener una pieza de estado
// Un simple booleano para saber si esta en modo oscuro o no
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// Un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);

// StateNotifierProvider es para un objeto más complejo
// Un objeto de tipo AppTheme (Custom)
// Aca se puede mandar cualquier cosa para que inicie así, del localStorage también
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// Controller o Notifier
// Se va a encargar de mantener un estado en particular, instancia del AppTheme
class ThemeNotifier extends StateNotifier<AppTheme> {
  // Crealo con los valores por defecto
  // STATE = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int index) {
    state = state.copyWith(selectedColor: index);
  }
}
