import 'package:get/get.dart';

class FavouritesController extends GetxController {
  final RxSet<String> favouritePetIds = <String>{}.obs;

  void toggleFavourite(String petId) {
    if (favouritePetIds.contains(petId)) {
      favouritePetIds.remove(petId);
    } else {
      favouritePetIds.add(petId);
    }
  }

  bool isFavourite(String petId) => favouritePetIds.contains(petId);
}