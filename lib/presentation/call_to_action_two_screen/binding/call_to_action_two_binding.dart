import '../controller/call_to_action_two_controller.dart';
import 'package:get/get.dart';

class CallToActionTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallToActionTwoController());
  }
}
