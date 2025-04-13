import 'package:get/get.dart';
import 'package:medic_app/features/login/presentation/pages/login_page.dart';

class WelcomeController extends GetxController {
  void handleContinue() {
    Get.to(const LoginPage());
  }
}
