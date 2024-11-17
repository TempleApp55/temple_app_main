import 'package:get/get.dart';

import '../controllers/temple_details_controller.dart';

class TempleDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TempleDetailsController>(
      () => TempleDetailsController(),
    );
  }
}
