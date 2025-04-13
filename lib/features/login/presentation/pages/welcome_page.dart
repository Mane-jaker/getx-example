import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medic_app/features/login/presentation/controllers/welcome_controller.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final welcomeController = Get.put(WelcomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://www.cdc.gov/diabetes/news/media/images/GettyImages1468497276diabetescareteam.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 24),
            const Text(
              'Welcome to Medic App!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'We are glad to have you here. Let\'s get started!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                welcomeController.handleContinue();
              },
              child: const Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
