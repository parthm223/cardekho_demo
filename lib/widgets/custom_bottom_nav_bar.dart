import 'package:cardekho_demo/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavBar({
    super.key,
    this.currentIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home, 'Home', currentIndex == 0, () {
                if (currentIndex != 0) {
                  Get.offAllNamed(Routes.HOME);
                }
              }),
              _buildNavItem(Icons.search, 'Search', currentIndex == 1, () {
                if (currentIndex != 1) {
                  Get.offAllNamed(Routes.SEARCH);
                }
              }),
              _buildNavItem(Icons.compare_arrows, 'Compare', currentIndex == 2,
                  () {
                if (currentIndex != 2) {
                  Get.offAllNamed(Routes.COMPARE);
                }
              }),
              _buildNavItem(Icons.person, 'Profile', currentIndex == 3, () {
                if (currentIndex != 3) {
                  Get.offAllNamed(Routes.PROFILE);
                }
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
      IconData icon, String label, bool isSelected, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.blueAccent : Colors.grey,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.blueAccent : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
