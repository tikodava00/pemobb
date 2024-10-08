import 'package:demo/app/modules/daftar/controllers/daftar_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DaftarController>(
      () => DaftarController(),
    );
  }
}
