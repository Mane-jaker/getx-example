import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medic_app/features/home/presentation/pages/home_page.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final storage = GetStorage('medic_app');

  void handleLogin() {
    final username = usernameController.text;
    final password = passwordController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        SnackBar(content: Text('Welcome, $username!')),
      );

      storage.write('user', username);
      Get.offAll(const HomePage());
    } else {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
    }
  }
}
