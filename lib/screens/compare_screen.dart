import 'package:cardekho_demo/controller/compare_controller.dart';
import 'package:cardekho_demo/model/car_model.dart';
import 'package:cardekho_demo/routes/app_pages.dart';
import 'package:cardekho_demo/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompareScreen extends GetView<CompareController> {
  const CompareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Compare Cars'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: controller.clearComparison,
          ),
        ],
      ),
      body: Obx(() {
        if (controller.selectedCars.isEmpty) {
          return _buildEmptyState();
        } else {
          return _buildComparisonView();
        }
      }),
      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 2),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGNhciUyMGNvbXBhcmlzb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 24),
          const Text(
            'No Cars Selected for Comparison',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Add up to 3 cars to compare their features',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton.icon(
            onPressed: () {
              Get.toNamed(Routes.HOME);
            },
            icon: const Icon(Icons.add),
            label: const Text('Add Cars'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComparisonView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildSelectedCarsRow(),
          const SizedBox(height: 16),
          _buildComparisonTable(),
        ],
      ),
    );
  }

  Widget _buildSelectedCarsRow() {
    return Container(
      height: 180,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: List.generate(controller.maxCompare, (index) {
          if (index < controller.selectedCars.length) {
            final car = controller.selectedCars[index];
            return Expanded(
              child: _buildSelectedCarCard(car),
            );
          } else {
            return Expanded(
              child: _buildAddCarPlaceholder(),
            );
          }
        }),
      ),
    );
  }

  Widget _buildSelectedCarCard(Car car) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  car.imageUrl,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: InkWell(
                  onTap: () => controller.removeCarFromCompare(car),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            car.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            car.price,
            style: TextStyle(
              color: Get.theme.primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddCarPlaceholder() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.HOME);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey[300]!,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle_outline,
                size: 40,
                color: Colors.grey[500],
              ),
              const SizedBox(height: 8),
              Text(
                'Add Car',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComparisonTable() {
    if (controller.selectedCars.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      margin: const EdgeInsets.all(16),
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
        children: [
          _buildComparisonSection('Price', (car) => car.price),
          _buildComparisonSection('Mileage', (car) => car.mileage),
          _buildComparisonSection('Fuel Type', (car) => car.fuelType),
          _buildSpecificationsSection(),
          _buildFeaturesSection(),
        ],
      ),
    );
  }

  Widget _buildComparisonSection(String title, String Function(Car) getValue) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          color: Colors.grey[100],
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              ...List.generate(controller.selectedCars.length, (index) {
                return Expanded(
                  flex: 3,
                  child: Text(
                    getValue(controller.selectedCars[index]),
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              }),
              // Add empty cells for remaining slots
              ...List.generate(
                controller.maxCompare - controller.selectedCars.length,
                (index) => const Expanded(flex: 3, child: SizedBox()),
              ),
            ],
          ),
        ),
        const Divider(height: 1),
      ],
    );
  }

  Widget _buildSpecificationsSection() {
    if (controller.selectedCars.isEmpty) {
      return const SizedBox.shrink();
    }

    // Get all unique specification keys from all cars
    final Set<String> allSpecKeys = {};
    for (final car in controller.selectedCars) {
      allSpecKeys.addAll(car.specifications.keys);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          color: Colors.blueAccent.withOpacity(0.1),
          child: const Text(
            'Specifications',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        ...allSpecKeys.map((specKey) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        specKey,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    ...List.generate(controller.selectedCars.length, (index) {
                      final car = controller.selectedCars[index];
                      return Expanded(
                        flex: 3,
                        child: Text(
                          car.specifications[specKey] ?? 'N/A',
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      );
                    }),
                    // Add empty cells for remaining slots
                    ...List.generate(
                      controller.maxCompare - controller.selectedCars.length,
                      (index) => const Expanded(flex: 3, child: SizedBox()),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
            ],
          );
        }).toList(),
      ],
    );
  }

  Widget _buildFeaturesSection() {
    if (controller.selectedCars.isEmpty) {
      return const SizedBox.shrink();
    }

    // Get all unique features from all cars
    final Set<String> allFeatures = {};
    for (final car in controller.selectedCars) {
      allFeatures.addAll(car.features);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          color: Colors.blueAccent.withOpacity(0.1),
          child: const Text(
            'Features',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        ...allFeatures.map((feature) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        feature,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    ...List.generate(controller.selectedCars.length, (index) {
                      final car = controller.selectedCars[index];
                      final hasFeature = car.features.contains(feature);
                      return Expanded(
                        flex: 3,
                        child: Icon(
                          hasFeature ? Icons.check_circle : Icons.cancel,
                          color: hasFeature ? Colors.green : Colors.red[300],
                        ),
                      );
                    }),
                    // Add empty cells for remaining slots
                    ...List.generate(
                      controller.maxCompare - controller.selectedCars.length,
                      (index) => const Expanded(flex: 3, child: SizedBox()),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
            ],
          );
        }).toList(),
      ],
    );
  }
}
