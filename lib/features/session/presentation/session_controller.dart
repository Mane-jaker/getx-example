import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class SessionController extends GetxController {
  var isSignedIn = false.obs;
  var currentUser = ''.obs;

  final storage = GetStorage('medic_app');

  Future<void> loadSession() async {
    if (storage.hasData('user')) {
      isSignedIn.value = true;
      currentUser.value = storage.read('user');
    } else {
      isSignedIn.value = false;
    }
  }

  Future<void> signOut() async {
    isSignedIn.value = false;
    currentUser.value = '';
    storage.remove('user');
  }
}
