import 'package:cardekho_demo/controller/car_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeaturesGrid extends GetView<CarDetailController> {
  const FeaturesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final car = controller.car.value;

      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Key Features',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: car.features
                  .map((feature) => _buildFeatureChip(feature))
                  .toList(),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildFeatureChip(String feature) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.blueAccent.withOpacity(0.3),
        ),
      ),
      child: Text(
        feature,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
