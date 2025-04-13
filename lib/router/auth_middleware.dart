import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medic_app/features/session/presentation/session_controller.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final sessionController = Get.find<SessionController>();
    if (!sessionController.isSignedIn.value) {
      return const RouteSettings(name: '/login');
    }
    return null;
  }
}
