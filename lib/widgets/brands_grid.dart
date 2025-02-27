import 'package:flutter/material.dart';

class BrandsGrid extends StatelessWidget {
  const BrandsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> brands = [
      {
        'name': 'Tesla',
        'logo':
            'https://images.unsplash.com/photo-1662947475515-e95c81c04753?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fHw%3D',
      },
      {
        'name': 'BMW',
        'logo':
            'https://images.unsplash.com/photo-1557053964-937650b63311?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Ym13JTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D',
      },
      {
        'name': 'Mercedes',
        'logo':
            'https://images.unsplash.com/photo-1563694983011-6f4d90358083?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVyY2VkZXMlMjBiZW56JTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D',
      },
      {
        'name': 'Audi',
        'logo':
            'https://images.unsplash.com/photo-1610475426528-f5565ecca5bb?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXVkaSUyMGxvZ298ZW58MHx8MHx8fDA%3D',
      },
      {
        'name': 'Toyota',
        'logo':
            'https://images.unsplash.com/photo-1546545817-27f0fb006153?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dG95b3RhJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D',
      },
      {
        'name': 'Honda',
        'logo':
            'https://images.unsplash.com/photo-1519429893275-fa1eb00397e9?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG9uZGElMjBsb2dvfGVufDB8fDB8fHww',
      },
      {
        'name': 'Ford',
        'logo':
            'https://images.unsplash.com/photo-1519429893275-fa1eb00397e9?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aG9uZGElMjBsb2dvfGVufDB8fDB8fHww',
      },
      {
        'name': 'Porsche',
        'logo':
            'https://images.unsplash.com/photo-1618767097255-90cc27e48cde?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cG9yc2NoZSUyMGxvZ298ZW58MHx8MHx8fDA%3D',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Popular Brands'),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.8,
          ),
          itemCount: brands.length,
          itemBuilder: (context, index) {
            return _buildBrandItem(brands[index]);
          },
        ),
      ],
    );
  }

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

  Widget _buildBrandItem(Map<String, String> brand) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(brand['logo']!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          brand['name']!,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
