import 'package:cardekho_demo/controller/home_controller.dart';
import 'package:cardekho_demo/model/car_model.dart';
import 'package:cardekho_demo/widgets/brands_grid.dart';
import 'package:cardekho_demo/widgets/carousel_section.dart';
import 'package:cardekho_demo/widgets/custom_bottom_nav_bar.dart';
import 'package:cardekho_demo/widgets/loading_view.dart';
import 'package:cardekho_demo/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Soft background color
      body: Obx(
        () => controller.isLoading.value
            ? const LoadingView()
            : CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 220,
                    floating: true,
                    pinned: true,
                    elevation: 0,
                    backgroundColor: Colors.white,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1629319445024-1b8745ef9231?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8',
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.4),
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.6),
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 20,
                            left: 16,
                            right: 16,
                            child: SearchBarWidget(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSectionTitle('Featured Cars'),
                          _buildCarousel(
                            'https://images.unsplash.com/photo-1592853625511-ad0edcc69c07?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8ZXhwZW5zaXZlJTIwY2FyfGVufDB8fDB8fHww',
                            controller.featuredCars
                                .cast<Car>(), // Fixed type issue
                          ),
                          const SizedBox(height: 24),
                          _buildSectionTitle('Electric Cars'),
                          _buildCarousel(
                            'https://images.unsplash.com/photo-1719772692993-933047b8ea4a?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZWxlY3RyaWMlMjBjYXIlMjBiYXR0ZXJ5fGVufDB8fDB8fHww',
                            controller.electricCars
                                .cast<Car>(), // Fixed type issue
                          ),
                          const SizedBox(height: 24),
                          const BrandsGrid(),
                          const SizedBox(height: 24),
                          _buildSectionTitle('Upcoming Cars'),
                          _buildCarousel(
                            'https://plus.unsplash.com/premium_photo-1687153733088-9fc19cbc59bf?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZnV0dXJlJTIwY2FyfGVufDB8fDB8fHww',
                            controller.upcomingCars
                                .cast<Car>(), // Fixed type issue
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }

  /// Builds section title with a stylish underline effect
  Widget _buildSectionTitle(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        Container(
          width: 40,
          height: 4,
          margin: const EdgeInsets.only(top: 4, bottom: 12),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }

  /// Builds a beautiful carousel with a shimmer effect for loading
  Widget _buildCarousel(String imageUrl, List<Car> cars) {
    return cars.isEmpty
        ? _buildShimmerEffect()
        : CarouselSection(
            title: '',
            cars: cars,
            onCarTap: (car) {},
            imageUrl: imageUrl, // Now correctly passed
          );
  }

  /// Builds a shimmer effect as a placeholder while loading
  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
      ),
    );
  }
}
