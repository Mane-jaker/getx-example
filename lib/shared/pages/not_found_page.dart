import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medic_app/core/controllers/shared_controller.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.error_outline,
                size: 100,
                color: Get.find<SharedController>().textColorSecondary.value,
              ),
              const SizedBox(height: 20),
              Text(
                'Lo sentimos, la página que buscas no se ha encontrado.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Get.find<SharedController>().textColorSecondary.value,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Volver'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
