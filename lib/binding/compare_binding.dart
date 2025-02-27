import 'package:cardekho_demo/controller/compare_controller.dart';
import 'package:get/get.dart';

class CompareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompareController>(() => CompareController());
  }
}
