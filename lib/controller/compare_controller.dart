import 'package:get/get.dart';
import 'package:cardekho_demo/model/car_model.dart';

class CompareController extends GetxController {
  final RxList<Car> selectedCars = <Car>[].obs;
  final int maxCompare = 3; // Limit the comparison to 3 cars

  void addCarToCompare(Car car) {
    if (selectedCars.length < maxCompare) {
      selectedCars.add(car);
    } else {
      Get.snackbar("Limit Reached", "You can compare only $maxCompare cars at a time.");
    }
  }

  void removeCarFromCompare(Car car) {
    selectedCars.remove(car);
  }

  void clearComparison() {
    selectedCars.clear();
  }
}
