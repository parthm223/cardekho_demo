import 'package:get/get.dart';
import 'package:cardekho_demo/model/car_model.dart';

class SearchController extends GetxController {
  final RxList<Car> allCars = <Car>[].obs; // This should be fetched from an API or database
  final RxList<Car> filteredCars = <Car>[].obs;
  final RxString searchText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    filteredCars.assignAll(allCars); // Initially, all cars are displayed
  }

  void updateSearch(String query) {
    searchText.value = query;
    if (query.isEmpty) {
      filteredCars.assignAll(allCars);
    } else {
      filteredCars.assignAll(
        allCars.where((car) => car.name.toLowerCase().contains(query.toLowerCase())).toList(),
      );
    }
  }
}
