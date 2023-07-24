import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Un simple booleano para saber si esta en modo oscuro o no
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);
