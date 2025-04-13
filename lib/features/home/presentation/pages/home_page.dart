import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medic_app/features/home/presentation/controllers/home_controller.dart';
import 'package:medic_app/shared/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    homeController.loadItems();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              homeController.handleLogout();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Welcome to the Home Page!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeController.items.length,
                itemBuilder: (context, index) {
                  final item = homeController.items[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CardWidget(
                      imageUrl: item['image']!,
                      text: item['text']!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
