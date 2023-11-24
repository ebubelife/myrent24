import '../controller/password_reset_controller.dart';
import 'package:get/get.dart';

class PasswordResetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordResetController());
  }
}
