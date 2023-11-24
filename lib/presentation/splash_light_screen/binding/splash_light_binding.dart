import '../controller/splash_light_controller.dart';
import 'package:get/get.dart';

class SplashLightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashLightController());
  }
}
