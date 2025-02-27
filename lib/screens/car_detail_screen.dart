import 'package:cardekho_demo/controller/car_detail_controller.dart';
import 'package:cardekho_demo/widgets/book_test_drive.dart';
import 'package:cardekho_demo/widgets/car_image_gallery.dart';
import 'package:cardekho_demo/widgets/color_selector.dart';
import 'package:cardekho_demo/widgets/features_grid.dart';
import 'package:cardekho_demo/widgets/specifications_card.dart';
import 'package:cardekho_demo/widgets/variants_table.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarDetailScreen extends GetView<CarDetailController> {
  const CarDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() { // Using Obx to listen for changes
        final car = controller.car.value; // Access Rx<Car> value

        return CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: 'car-${car.id}', // Use car.id instead of controller.car.id
                  child: CarImageGallery(
                    images: car.images, // Use car.images instead of controller.car.images
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      car.name, // Use car.name instead of controller.car.name
                      style: Get.textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      car.price, // Use car.price instead of controller.car.price
                      style: Get.textTheme.titleLarge?.copyWith(
                        color: Get.theme.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const SpecificationsCard(),
                    const SizedBox(height: 24),
                    const FeaturesGrid(),
                    const SizedBox(height: 24),
                    const ColorSelector(),
                    const SizedBox(height: 24),
                    const VariantsTable(),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
      bottomNavigationBar: const BookTestDriveBar(),
    );
  }
}
