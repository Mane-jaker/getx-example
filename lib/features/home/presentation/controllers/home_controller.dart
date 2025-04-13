import 'package:get/get.dart';
import 'package:medic_app/features/session/presentation/session_controller.dart';

class HomeController extends GetxController {
  var items = <Map<String, dynamic>>[].obs;

  final sessionController = Get.find<SessionController>();

  void loadItems() {
    items.value = [
      {
        'image':
            'https://www.cdc.gov/diabetes/news/media/images/GettyImages1468497276diabetescareteam.jpg',
        'text': 'Card 1',
      },
      {
        'image':
            'https://www.cdc.gov/diabetes/news/media/images/GettyImages1468497276diabetescareteam.jpg',
        'text': 'Card 2',
      },
      {
        'image':
            'https://www.cdc.gov/diabetes/news/media/images/GettyImages1468497276diabetescareteam.jpg',
        'text': 'Card 3',
      },
    ];
  }

  void handleLogout() {
    sessionController.signOut();
    Get.offAllNamed('/login');
  }
}
