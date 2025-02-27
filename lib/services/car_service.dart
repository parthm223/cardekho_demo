import 'package:cardekho_demo/model/car_model.dart';
import 'package:get/get.dart';

class CarService extends GetxService {
  Future<List<Car>> getFeaturedCars() async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));

    return [
      Car(
        id: "1",
        name: "Tesla Model S",
        brand: "Tesla",
        price: "\$79,990",
        mileage: "396 miles",
        fuelType: "Electric",
        imageUrl:
            "https://images.unsplash.com/photo-1617788138017-80ad40651399?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dGVzbGElMjBtb2RlbCUyMHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
        images: [
          "https://images.unsplash.com/photo-1617788138017-80ad40651399?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dGVzbGElMjBtb2RlbCUyMHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
          "https://images.unsplash.com/photo-1554744512-d6c603f27c54?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVzbGElMjBtb2RlbCUyMHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
          "https://images.unsplash.com/photo-1453491945771-a1e904948959?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dGVzbGElMjBtb2RlbCUyMHN8ZW58MHx8MHx8fDA%3D",
        ],
        specifications: {
          "Horsepower": "670 HP",
          "Top Speed": "200 mph",
          "Acceleration": "0-60 in 3.1 sec",
          "Range": "396 miles",
          "Charging": "15 min for 200 miles",
        },
        features: [
          "Autopilot",
          "Ludicrous Mode",
          "Panoramic Sunroof",
          "Wireless Charging",
          "Premium Sound System",
          "Heated Seats",
        ],
        colors: ["Red", "Blue", "Black", "White", "Silver"],
        variants: [
          {"name": "Standard", "price": "\$79,990"},
          {"name": "Long Range", "price": "\$89,990"},
          {"name": "Plaid", "price": "\$119,990"},
        ],
      ),
      Car(
        id: "2",
        name: "BMW X5",
        brand: "BMW",
        price: "\$63,900",
        mileage: "21 mpg",
        fuelType: "Gasoline",
        imageUrl:
            "https://images.unsplash.com/photo-1615908397724-6dc711db34a7?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Ym13JTIweDV8ZW58MHx8MHx8fDA%3D",
        images: [
          "https://images.unsplash.com/photo-1609184166822-bd1f1b991a06?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Ym13JTIweDV8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1554666869-04dafcdc7a48?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJtdyUyMHN1dnxlbnwwfHwwfHx8MA%3D%3D",
          "https://images.unsplash.com/photo-1604249553999-3b422c3d1ff6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Ym13JTIweDV8ZW58MHx8MHx8fDA%3D",
        ],
        specifications: {
          "Engine": "3.0L Inline-6",
          "Horsepower": "335 HP",
          "Torque": "330 lb-ft",
          "Acceleration": "0-60 in 5.3 sec",
          "Fuel Economy": "21 mpg city / 26 mpg highway",
        },
        features: [
          "All-Wheel Drive",
          "Panoramic Moonroof",
          "Heated Seats",
          "Harman Kardon Sound System",
          "Adaptive Cruise Control",
          "Lane Keeping Assist",
        ],
        colors: [
          "Alpine White",
          "Black Sapphire",
          "Mineral White",
          "Phytonic Blue",
          "Arctic Grey"
        ],
        variants: [
          {"name": "sDrive40i", "price": "\$63,900"},
          {"name": "xDrive40i", "price": "\$66,200"},
          {"name": "M50i", "price": "\$86,400"},
        ],
      ),
      Car(
        id: "3",
        name: "Mercedes-Benz S-Class",
        brand: "Mercedes-Benz",
        price: "\$111,100",
        mileage: "22 mpg",
        fuelType: "Gasoline",
        imageUrl:
            "https://images.unsplash.com/photo-1619221496652-7ee3d7406203?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bWVyY2VkZXMlMjBzJTIwY2xhc3N8ZW58MHx8MHx8fDA%3D",
        images: [
          "https://images.unsplash.com/photo-1609521247503-8de40462e427?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWVyY2VkZXMlMjBzJTIwY2xhc3N8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1610192562438-a1df240f9dbd?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fG1lcmNlZGVzJTIwcyUyMGNsYXNzfGVufDB8fDB8fHww",
          "https://images.unsplash.com/photo-1570733577524-3a047079e80d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bWVyY2VkZXN8ZW58MHx8MHx8fDA%3D",
        ],
        specifications: {
          "Engine": "3.0L Inline-6 Turbo",
          "Horsepower": "429 HP",
          "Torque": "384 lb-ft",
          "Acceleration": "0-60 in 4.9 sec",
          "Transmission": "9-speed automatic",
        },
        features: [
          "MBUX Infotainment System",
          "Burmester 3D Surround Sound",
          "Heated and Ventilated Seats",
          "Augmented Reality Navigation",
          "Active Ambient Lighting",
          "Rear-wheel Steering",
        ],
        colors: [
          "Obsidian Black",
          "Selenite Grey",
          "Designo Diamond White",
          "Emerald Green",
          "Nautical Blue"
        ],
        variants: [
          {"name": "S 500 4MATIC", "price": "\$111,100"},
          {"name": "S 580 4MATIC", "price": "\$131,450"},
          {"name": "Maybach S 580", "price": "\$184,900"},
        ],
      ),
    ];
  }

  Future<List<Car>> getElectricCars() async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));

    return [
      Car(
        id: "4",
        name: "Tesla Model 3",
        brand: "Tesla",
        price: "\$40,240",
        mileage: "358 miles",
        fuelType: "Electric",
        imageUrl:
            "https://images.unsplash.com/photo-1560958089-b8a1929cea89?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dGVzbGElMjBtb2RlbCUyMDN8ZW58MHx8MHx8fDA%3D",
        images: [
          "https://images.unsplash.com/photo-1606016159991-dfe4f2746ad5?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dGVzbGElMjBtb2RlbCUyMDN8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1617788138017-80ad40651399?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dGVzbGElMjBjYXJ8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1538592116845-119a3974c958?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHRlc2xhJTIwY2FyfGVufDB8fDB8fHww"
        ],
        specifications: {
          "Battery": "60 kWh",
          "Range": "358 miles",
          "Acceleration": "0-60 in 5.8 sec",
          "Top Speed": "140 mph",
          "Charging": "15 min for 175 miles",
        },
        features: [
          "Autopilot",
          "15\" Touchscreen",
          "Glass Roof",
          "Wireless Charging",
          "Premium Audio",
          "Over-the-air Updates",
        ],
        colors: [
          "Pearl White",
          "Solid Black",
          "Deep Blue Metallic",
          "Red Multi-Coat"
        ],
        variants: [
          {"name": "Standard Range", "price": "\$40,240"},
          {"name": "Long Range", "price": "\$47,240"},
          {"name": "Performance", "price": "\$53,240"},
        ],
      ),
      Car(
        id: "5",
        name: "Audi e-tron GT",
        brand: "Audi",
        price: "\$104,900",
        mileage: "238 miles",
        fuelType: "Electric",
        imageUrl:
            "https://images.unsplash.com/photo-1629897874832-a2e2f0d3715d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8YXVkaSUyMGUlMjB0cm9ufGVufDB8fDB8fHww",
        images: [
          "https://images.unsplash.com/photo-1629897872216-47ceb52635ab?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGF1ZGklMjBlJTIwdHJvbnxlbnwwfHwwfHx8MA%3D%3D",
          "https://images.unsplash.com/photo-1655126275489-2c41cb7f2b74?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXVkaSUyMGUlMjB0cm9uJTIwZ3R8ZW58MHx8MHx8fDA%3D",
          "https://images.unsplash.com/photo-1624001010212-f7bfd7cc74cb?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YXVkaSUyMGV0cm9ufGVufDB8fDB8fHww",
        ],
        specifications: {
          "Power": "522 HP",
          "Torque": "472 lb-ft",
          "Range": "238 miles",
          "Acceleration": "0-60 in 3.9 sec",
          "Charging": "5-80% in 22.5 min",
        },
        features: [
          "Quattro All-Wheel Drive",
          "Matrix LED Headlights",
          "Adaptive Air Suspension",
          "Bang & Olufsen Sound System",
          "Virtual Cockpit Plus",
          "Head-up Display",
        ],
        colors: [
          "Tactical Green",
          "Daytona Gray",
          "Mythos Black",
          "Kemora Gray",
          "Suzuka Gray"
        ],
        variants: [
          {"name": "e-tron GT", "price": "\$104,900"},
          {"name": "RS e-tron GT", "price": "\$143,900"},
        ],
      ),
      Car(
        id: "6",
        name: "Porsche Taycan",
        brand: "Porsche",
        price: "\$86,700",
        mileage: "246 miles",
        fuelType: "Electric",
        imageUrl:
            "https://images.unsplash.com/photo-1570432215913-b66fff4a50a4?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cG9yc2NoZSUyMHRheWNhbnxlbnwwfHwwfHx8MA%3D%3D",
        images: [
          "https://images.unsplash.com/photo-1618213221550-c32da08997db?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9yc2NoZSUyMHRheWNhbnxlbnwwfHwwfHx8MA%3D%3D",
          "https://images.unsplash.com/photo-1584060622420-0673aad46076?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cG9yc2NoZXxlbnwwfHwwfHx8MA%3D%3D",
          "https://images.unsplash.com/photo-1503376780353-7e6692767b70?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHBvcnNjaGUlMjB0YXljYW58ZW58MHx8MHx8fDA%3D",
        ],
        specifications: {
          "Power": "402 HP",
          "Torque": "254 lb-ft",
          "Range": "246 miles",
          "Acceleration": "0-60 in 5.1 sec",
          "Top Speed": "143 mph",
        },
        features: [
          "Porsche Active Suspension Management",
          "Panoramic Glass Roof",
          "Adaptive Sport Seats",
          "Bose Surround Sound System",
          "Porsche Connect",
          "Lane Keep Assist",
        ],
        colors: [
          "White",
          "Black",
          "Gentian Blue",
          "Carmine Red",
          "Frozen Blue Metallic"
        ],
        variants: [
          {"name": "Taycan", "price": "\$86,700"},
          {"name": "Taycan 4S", "price": "\$106,500"},
          {"name": "Taycan Turbo", "price": "\$153,300"},
          {"name": "Taycan Turbo S", "price": "\$187,600"},
        ],
      ),
    ];
  }

  Future<List<Car>> getUpcomingCars() async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));

    return [
      Car(
        id: "7",
        name: "Lucid Air",
        brand: "Lucid",
        price: "\$87,400",
        mileage: "520 miles",
        fuelType: "Electric",
        imageUrl:
            "https://images.unsplash.com/photo-1691035994052-f890f386d10e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        images: [
          "https://images.unsplash.com/photo-1694676518921-e1d84d27625c?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          "https://luxus-plus.com/wp-content/uploads/2023/08/lucid-air-gallery-012.jpeg",
          "https://theweeklydriver.com/wp-content/uploads/2025/01/learning-to-innovate-how-automotive-design-classes-are-shaping-future-cars-unsplash.jpg",
        ],
        specifications: {
          "Power": "620 HP",
          "Range": "520 miles",
          "Acceleration": "0-60 in 2.5 sec",
          "Top Speed": "168 mph",
          "Charging": "300 miles in 20 min",
        },
        features: [
          "DreamDrive Pro ADAS",
          "Glass Canopy Roof",
          "34\" Curved Display",
          "Dolby Atmos Sound System",
          "Executive Rear Seating",
          "Facial Recognition",
        ],
        colors: [
          "Stellar White",
          "Infinite Black",
          "Cosmos Silver",
          "Quantum Grey",
          "Eureka Gold"
        ],
        variants: [
          {"name": "Air Pure", "price": "\$87,400"},
          {"name": "Air Touring", "price": "\$107,400"},
          {"name": "Air Grand Touring", "price": "\$138,000"},
          {"name": "Air Dream Edition", "price": "\$169,000"},
        ],
      ),
      Car(
        id: "8",
        name: "Rivian R1S",
        brand: "Rivian",
        price: "\$78,000",
        mileage: "316 miles",
        fuelType: "Electric",
        imageUrl:
            "https://images.unsplash.com/photo-1667137092038-27612b7233d1?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHJpdmlhbnxlbnwwfHwwfHx8MA%3D%3D",
        images: [
          "https://images.unsplash.com/photo-1707746493178-dc68cb6108c6?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHJpdmlhbnxlbnwwfHwwfHx8MA%3D%3D",
          "https://miro.medium.com/v2/resize:fit:1400/1*feZXnEQZVDzLrFi_1kBtvQ.jpeg",
          "https://images.unsplash.com/photo-1696890508757-bc0f5a14efa5?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cml2aWFufGVufDB8fDB8fHww",
        ],
        specifications: {
          "Power": "835 HP",
          "Torque": "908 lb-ft",
          "Range": "316 miles",
          "Acceleration": "0-60 in 3.0 sec",
          "Wading Depth": "3+ feet",
        },
        features: [
          "Quad-Motor AWD",
          "Air Suspension",
          "Vegan Leather Interior",
          "Meridian Audio System",
          "Driver+ Assistance",
          "Gear Tunnel",
        ],
        colors: [
          "LA Silver",
          "Glacier White",
          "Compass Yellow",
          "Forest Green",
          "Red Canyon"
        ],
        variants: [
          {"name": "Explore", "price": "\$78,000"},
          {"name": "Adventure", "price": "\$86,000"},
        ],
      ),
      Car(
        id: "9",
        name: "Cadillac Celestiq",
        brand: "Cadillac",
        price: "\$300,000",
        mileage: "300 miles",
        fuelType: "Electric",
        imageUrl:
            "https://media.architecturaldigest.com/photos/634d7f55f51820e32fae5c81/16:9/w_2560%2Cc_limit/49_CELESTIQ_Rear3q.jpg",
        images: [
          "https://news.cadillac.com/dld/content/dam/Media/images/US/Vehicles/Cadillac/CELESTIQ/product/cadillac-celestiq-310.jpg",
          "https://cdn.motor1.com/images/mgl/W89Ylo/s1/cadillac-celestiq-production-car-front-angle.jpg",
          "https://st.arenaev.com/specs/cadillac/cadillac-celestiq-front2.jpg",
        ],
        specifications: {
          "Power": "600 HP",
          "Range": "300 miles",
          "Acceleration": "0-60 in 3.8 sec",
          "Battery": "111 kWh",
          "Charging": "80% in 35 min",
        },
        features: [
          "Smart Glass Roof",
          "Ultra Cruise Hands-free Driving",
          "38\" LED Display",
          "AKG Studio Reference Sound System",
          "Four-wheel Steering",
          "Suspended Particle Device Technology",
        ],
        colors: ["Custom Colors Available"],
        variants: [
          {"name": "Bespoke", "price": "\$300,000+"},
        ],
      ),
    ];
  }

  Future<List<Car>> getAllCars() async {
    final List<Car> allCars = [];

    final featuredCars = await getFeaturedCars();
    final electricCars = await getElectricCars();
    final upcomingCars = await getUpcomingCars();

    allCars.addAll(featuredCars);
    allCars.addAll(electricCars);
    allCars.addAll(upcomingCars);

    return allCars;
  }
}
