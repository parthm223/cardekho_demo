import 'package:get/get.dart';
import '../services/car_service.dart';
import '../services/local_storage_service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CarService());
    Get.put(LocalStorageService());
  }
}

