import 'package:cardekho_demo/binding/car_detail_binding.dart';
import 'package:cardekho_demo/binding/compare_binding.dart';
import 'package:cardekho_demo/binding/home_binding.dart';
import 'package:cardekho_demo/binding/search_binding.dart';
import 'package:cardekho_demo/screens/car_detail_screen.dart';
import 'package:cardekho_demo/screens/compare_screen.dart';
import 'package:cardekho_demo/screens/home_screen.dart';
import 'package:cardekho_demo/screens/search_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: Routes.SEARCH,
      page: () => const SearchScreen(),
      binding: SearchBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.CAR_DETAIL,
      page: () => const CarDetailScreen(),
      binding: CarDetailBinding(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: Routes.COMPARE,
      page: () => const CompareScreen(),
      binding: CompareBinding(),
    ),
  ];
}

abstract class Routes {
  static const HOME = '/';
  static const SEARCH = '/search';
  static const CAR_DETAIL = '/car-detail';
  static const COMPARE = '/compare';
  static const PROFILE = '/profile'; // Add this line
}
