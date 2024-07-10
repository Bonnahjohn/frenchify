import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class SettingsController extends GetxController {
  final box = GetStorage();

  var themeMode = ThemeMode.light.obs;
  var fontSize = 16.0.obs;

  @override
  void onInit() {
    super.onInit();
    loadSettings();
  }

  void loadSettings() {
    themeMode.value =
        box.read('themeMode') == 'dark' ? ThemeMode.dark : ThemeMode.light;
    fontSize.value = box.read('fontSize') ?? 16.0;
  }

  void updateThemeMode(ThemeMode mode) {
    themeMode.value = mode;
    box.write('themeMode', mode == ThemeMode.dark ? 'dark' : 'light');
  }

  void updateFontSize(double size) {
    fontSize.value = size;
    box.write('fontSize', size);
  }
}
