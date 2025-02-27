import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get_storage/get_storage.dart';

class LocalStorageService extends GetxService {
  final _box = GetStorage();

  Future<LocalStorageService> init() async {
    await GetStorage.init();
    return this;
  }

  Future<void> saveRecentSearches(List<String> searches) async {
    await _box.write('recent_searches', searches);
  }

  List<String> getRecentSearches() {
    return (_box.read('recent_searches') ?? []).cast<String>();
  }

  Future<void> saveFavoriteCars(List<String> carIds) async {
    await _box.write('favorite_cars', carIds);
  }

  List<String> getFavoriteCars() {
    return (_box.read('favorite_cars') ?? []).cast<String>();
  }
}

