import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medic_app/features/home/presentation/pages/home_page.dart';
import 'package:medic_app/features/login/presentation/pages/welcome_page.dart';
import 'package:medic_app/router/auth_middleware.dart';
import 'package:medic_app/shared/pages/not_found_page.dart';

class GetRouter {
  static String currentUser = GetStorage('sinube').read('user') ?? '';
  static String tipoConexion = GetStorage('sinube').read('enviroment') ?? '';
  static const String initialRoute = '/home';
  static GetPage notFoundPage =
      GetPage(name: '/404', page: () => const NotFoundPage());
  static final List<GetPage<dynamic>> pages = [
    GetPage(
      name: '/login',
      page: () => const WelcomePage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleware()],
    )
  ];
}
