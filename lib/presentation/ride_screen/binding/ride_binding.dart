import '../controller/ride_controller.dart';
import 'package:get/get.dart';

class RideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RideController());
  }
}
