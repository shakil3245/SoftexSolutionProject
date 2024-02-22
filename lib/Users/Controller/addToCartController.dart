import 'package:get/get.dart';

class CartController extends GetxController {
  final RxInt quantity = 0.obs;

  void increment() {
    quantity.value++;

  }

  void decrement() {
    if (quantity.value > 0) {
      quantity.value--;

    } else {
      Get.snackbar(
        "Minimum Quantity",
        "Quantity cannot be less than 0.",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void addToCart() {
    // Add your logic to add the item to the cart here
    // You might need to access other controllers or repositories here
    Get.snackbar(
      "Success",
      "Item added to cart! (Quantity: ${quantity.value})",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
