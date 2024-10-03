import 'package:get/get.dart';

class HomeController extends GetxController {
  // var data = 0.obs; //! Ini untuk reactive dan menggunakan obx
  int data = 0; //! ini untuk simple menggunakan get builder

  void tambah() {
    data++;
    if (data % 2 == 0) {
      update();
    }
  }

  void refreshHalaman() {
    update();
  }
}
