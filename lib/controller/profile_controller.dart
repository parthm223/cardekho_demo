import 'package:get/get.dart';

class ProfileController extends GetxController {
  final RxString userName = 'John Doe'.obs;
  final RxString userLocation = 'New York, USA'.obs;
  final RxString userAvatar =
      'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
          .obs;

  final RxInt savedCarsCount = 12.obs;
  final RxInt testDrivesCount = 3.obs;
  final RxInt reviewsCount = 8.obs;

  // Method to update user profile
  void updateProfile({String? name, String? location, String? avatar}) {
    if (name != null) userName.value = name;
    if (location != null) userLocation.value = location;
    if (avatar != null) userAvatar.value = avatar;
  }
}
