import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

class SharedController extends GetxController {
  Rx<Color?> primaryColor = const Color.fromARGB(255, 64, 160, 255).obs;
  Rx<Color?> secondaryColor = const Color.fromARGB(255, 187, 221, 248).obs;
  Rx<Color?> backgroundLoginColor =
      const Color.fromARGB(255, 219, 230, 252).obs;
  Rx<Color?> backgroundColorHeader =
      const Color.fromARGB(255, 111, 145, 231).obs;
  Rx<Color?> backgroundColor = const Color.fromARGB(255, 111, 167, 231).obs;
  Rx<Color?> selectedColor = const Color.fromARGB(255, 64, 134, 255).obs;
  Rx<Color?> oddRowGridColor = const Color.fromARGB(210, 221, 224, 255).obs;
  Rx<TextStyle?> textStyle = const TextStyle(color: Colors.white).obs;
  Rx<Color?> textColorPrimary = Colors.white.obs;
  Rx<Color?> textColorSecondary = const Color.fromARGB(255, 64, 166, 255).obs;
  Rx<Color?> backGroundColorSecondary =
      const Color.fromARGB(255, 34, 69, 94).obs;
  Rx<Color?> iconsColor = Colors.white.obs;
  Rx<String> nombreAplicativo = 'Sinube'.obs;
  Rx<String> descripcionAplicativo = 'Sistema'.obs;

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (double strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }
}
