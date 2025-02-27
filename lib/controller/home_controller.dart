import 'package:cardekho_demo/model/car_model.dart';
import 'package:cardekho_demo/routes/app_pages.dart';
import 'package:cardekho_demo/services/car_service.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  final CarService _carService = Get.find<CarService>();
  
  final RxList<Car> featuredCars = <Car>[].obs;
  final RxList<Car> electricCars = <Car>[].obs;
  final RxList<Car> upcomingCars = <Car>[].obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCars();
  }

  Future<void> fetchCars() async {
    try {
      isLoading.value = true;
      featuredCars.value = await _carService.getFeaturedCars();
      electricCars.value = await _carService.getElectricCars();
      upcomingCars.value = await _carService.getUpcomingCars();
    } catch (e) {
      Get.snackbar('Error', 'Failed to load cars');
    } finally {
      isLoading.value = false;
    }
  }

  void navigateToCarDetail(Car car) {
    Get.toNamed(Routes.CAR_DETAIL, arguments: car);
  }
}

