import '../controller/confirm_reset_one_controller.dart';
import 'package:get/get.dart';

class ConfirmResetOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmResetOneController());
  }
}
