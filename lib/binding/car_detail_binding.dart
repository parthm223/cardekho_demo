
import 'package:cardekho_demo/controller/car_detail_controller.dart';
import 'package:get/get.dart';

class CarDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarDetailController>(() => CarDetailController());
  }
}
