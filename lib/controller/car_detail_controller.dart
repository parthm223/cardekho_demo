import 'package:cardekho_demo/model/car_model.dart';
import 'package:get/get.dart';

class CarDetailController extends GetxController {
  var car = Car(
    id: "1",
    name: "Tesla Model S",
    brand: "Tesla",
    price: "\$79,990",
    mileage: "396 miles",
    fuelType: "Electric",
    imageUrl: "https://source.unsplash.com/600x400/?tesla",
    images: [
      "https://source.unsplash.com/600x400/?tesla",
      "https://source.unsplash.com/600x400/?car",
      "https://source.unsplash.com/600x400/?luxurycar",
    ],
    specifications: {
      "Horsepower": "670 HP",
      "Top Speed": "200 mph",
      "Acceleration": "0-60 in 3.1 sec",
    },
    features: [
      "Autopilot",
      "Ludicrous Mode",
      "Panoramic Sunroof",
      "Wireless Charging",
    ],
    colors: ["Red", "Blue", "Black", "White"],
    variants: [
      {"name": "Standard", "price": "\$79,990"},
      {"name": "Long Range", "price": "\$89,990"},
      {"name": "Plaid", "price": "\$119,990"},
    ],
  ).obs;
}
