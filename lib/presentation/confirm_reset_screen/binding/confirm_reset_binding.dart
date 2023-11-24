import '../controller/confirm_reset_controller.dart';
import 'package:get/get.dart';

class ConfirmResetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmResetController());
  }
}
