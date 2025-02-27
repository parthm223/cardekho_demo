class Car {
  final String id;
  final String name;
  final String brand;
  final String price;
  final String mileage;
  final String fuelType;
  final String imageUrl;
  final List<String> images;
  final Map<String, dynamic> specifications;
  final List<String> features;
  final List<String> colors;
  final List<Map<String, dynamic>> variants;

  Car({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.mileage,
    required this.fuelType,
    required this.imageUrl,
    required this.images,
    required this.specifications,
    required this.features,
    required this.colors,
    required this.variants,
  });

  /// Factory method to convert JSON to a `Car` object.
  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      brand: json['brand'] ?? '',
      price: json['price'] ?? '',
      mileage: json['mileage'] ?? '',
      fuelType: json['fuelType'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      images: (json['images'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
      specifications: json['specifications'] as Map<String, dynamic>? ?? {},
      features: (json['features'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
      colors: (json['colors'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ?? [],
    );
  }

  /// Method to convert `Car` object back to JSON.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'brand': brand,
      'price': price,
      'mileage': mileage,
      'fuelType': fuelType,
      'imageUrl': imageUrl,
      'images': images,
      'specifications': specifications,
      'features': features,
      'colors': colors,
      'variants': variants,
    };
  }
}
