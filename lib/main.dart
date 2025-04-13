import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medic_app/core/controllers/shared_controller.dart';
import 'package:medic_app/features/session/presentation/session_controller.dart';
import 'package:medic_app/router/get_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init('medic_app');
  final sessionController = Get.put(SessionController());
  Get.put(SharedController());
  await sessionController.loadSession();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final sharedController = Get.find<SharedController>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sinube',
      unknownRoute: GetRouter.notFoundPage,
      initialRoute: GetRouter.initialRoute,
      getPages: GetRouter.pages,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
        secondaryHeaderColor: Colors.amberAccent,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.lightGreen,
        ).copyWith(
          secondary: Colors.amberAccent,
        ),
      ),
      localizationsDelegates: const <LocalizationsDelegate<Object>>[
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const <Locale>[
        Locale('es', '419'),
        Locale('en', 'US'),
      ],
      locale: const Locale('es', '419'),
    );
  }
}
