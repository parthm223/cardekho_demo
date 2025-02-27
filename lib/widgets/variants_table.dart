import 'package:cardekho_demo/controller/car_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VariantsTable extends GetView<CarDetailController> {
  const VariantsTable({super.key});

  @override
  Widget build(BuildContext context) {
    final RxInt selectedVariantIndex = 0.obs;

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
              'Available Variants',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: car.variants.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final variant = car.variants[index];
                return Obx(() => _buildVariantItem(
                      variant['name']!,
                      variant['price']!,
                      index,
                      selectedVariantIndex.value == index,
                      () => selectedVariantIndex.value = index,
                    ));
              },
            ),
          ],
        ),
      );
    });
  }

  Widget _buildVariantItem(String name, String price, int index,
      bool isSelected, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        color: isSelected
            ? Colors.blueAccent.withOpacity(0.1)
            : Colors.transparent,
        child: Row(
          children: [
            Radio(
              value: index,
              groupValue: isSelected ? index : null,
              onChanged: (value) => onTap(),
              activeColor: Colors.blueAccent,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 14,
                      color: isSelected ? Colors.blueAccent : Colors.grey[600],
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: Colors.blueAccent,
              ),
          ],
        ),
      ),
    );
  }
}
