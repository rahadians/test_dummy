import 'package:get/get.dart';

import '../controllers/transparent_controller.dart';

class TransparentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransparentController>(
      () => TransparentController(),
    );
  }
}
